import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/app/items/screens/widgets/project_items_sliver_list.dart';
import 'package:hous_project_dashbord/app/items/screens/widgets/sliver_app_bar.dart';
 
 
class ProjectCustomScrollView extends StatelessWidget {
  const ProjectCustomScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        ///
        /// logo and details of project
        /// 
        CustomSliverAppBar(),
       ///
       ///
       
       ///
       /// the items of projets
       ///  
        ProjectItemsSliverList()
       ///  
       ///  
      ],
    );
  }

  
}

