# exercice
20 widget a implémenter.

1) AnimatedIcon
  -Usage
  
AnimatedIcon est un widget qui permet d'animer les icônes par exemple lorsqu'on est sur un lecteur video entrain de regarder une 
video quand on clique sur l'icone l'icone change et de play il passe a pause.
il faudrait:
d'abord que la classe herite d'un StatefulWidget
ensuite la classeState doit herité de State<classe> with SingleTickerProviderStateMixin pour pouvoir initialiser le controller de l'animation dans la fonction "initState" et ensuite dans la fonction "dispose".
  Pour l'implementer il faut comme propriétés a AnimatedIcon: icon(le nom de l'icon),progress(Controlleur de l'animation),
  exemple: IconButton(
        iconSize:50,
        icon:AnimatedIcon(
        icon: AnimatedIcons.pause_play,
        progress: _animationController,
      ),
      onPressed: handleOnpressed,
      ),
 handleOnpressed est une fonction pour permettre le changement de l'icone lorsqu'on l'appuie
    void handleOnpressed(){
    setState(() {
     isPlaying= !isPlaying;
     isPlaying
     ?_animationController.forward()
     :_animationController.reverse(); 
    });
  }


2) AnimatedOpacity
  -Usage
 AnimatedOpacity est la version animée de Opacity qui fait automatiquement passer l'opacité de l'enfant d'une valeur A a une valeur B sur une durée donnée
Par exemple: duration:Duration(second:2 ),
Pour l'implementer il faut comme propriétés a AnimatedOpacity: opacity, duration, curve, child

GestureDetector(
            child: AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: opacity1,
              curve: Curves.bounceInOut,
              child:cont(Colors.blue),
            ),
            onTap: (){
              setState(() {
                this.opacity1 = 1.0 - this.opacity1; 
              });
            },
          ),


3)AnimatedPadding Version animée de Padding qui transforme automatiquement l'indentation sur une durée donnée à chaque changement d'inset.
  -Usage
 AnimatedPadding est la version animée de Padding qui transforme automatiquement l'indentation de l'enfant a chaque changement d'etat sur une durée donnée
Par exemple: duration:Duration(second:2 ),
Pour l'implementer il faut comme propriétés a AnimatedOpacity: padding, duration, curve, child


GestureDetector(
            child: AnimatedPadding(
              duration: Duration(seconds: 4),
              padding: EdgeInsets.all(pad),
              curve: Curves.bounceIn,
              child:cont(Colors.blue),
            ),
            onTap: (){
              setState(() {
                if(this.pad ==0){
                  this.pad = 50;
                }
                else{
                  this.pad = 0;
                }
               
              });
            },
          ),
          
          
