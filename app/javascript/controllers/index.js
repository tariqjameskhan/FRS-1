// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import InsertInListController from "./insert_in_list_controller"
application.register("insert-in-list", InsertInListController)

import MapController from "./map_controller"
application.register("map", MapController)

import QuestionCardController from "./question_card_controller"
application.register("question-card", QuestionCardController)

import SubmitAllFormsController from "./submit_all_forms_controller"
application.register("submit-all-forms", SubmitAllFormsController)
