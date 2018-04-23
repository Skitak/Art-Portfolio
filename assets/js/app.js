import gallery from './gallery'
import aboutForm from './about'
import projectForm from './project'
import admin from './admin'
import email from './email'
import account from './account'
import {notifications} from './notifications'


    
/**
 * Calls all javascript pages individually.
 * 
 *  Improvements needed : Pagination or routing for F***'s sake
 */
$( document ).ready(function (){
    aboutForm()
    projectForm()
    gallery()
    admin()
    email()
    account()
    

})





