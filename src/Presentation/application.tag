import "./ViewController/ArticlesViewController.tag"
import "./ViewController/LoginViewController.tag"
import "./ViewController/ArticleViewController.tag"
import "./ViewController/EditerViewController.tag"
import "./ViewController/SettingsViewController.tag"
import "./ViewController/ProfileViewController.tag"
import "./ViewController/RegisterViewController.tag"
import "./ViewController/NotFoundViewController.tag"

<application>

<script>
import ApplicationUseCase from "../Domain/UseCase/ApplicationUseCase"

var self = this
var useCase = new ApplicationUseCase()

this.on("mount", function() {
    useCase.initialize( function( error ){
        if (error != null){
            // go to 404
            throw Error("Initialize is failed");
        }
        useCase.setRoute()
        useCase.routing()
    })
})
</script>

<div id="mainView"></div> <!-- div tag to prevent it from being mounted automatically -->

</application>