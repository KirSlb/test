<?php

namespace App\Http\Controllers;

use App\Slider;
use App\Project;
class IndexController extends MainController
{
    public function index(Slider $slider)
    {
        $this->data['slides'] = $slider->getActive();
        return view('pages.index',$this->data);
    }

    public function projectList(Project $project)
    {
        $this->data['projects'] = $project->getActive();
        return view('pages.project_list',$this->data);
    }
    public function projectCart($slug, Project $project)
    {
        $this->data['project'] = $project->getBySlug($slug);
        return view('pages.project_cart',$this->data);
    }
}