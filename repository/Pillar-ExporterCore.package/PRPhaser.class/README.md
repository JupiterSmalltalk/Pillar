I am a class that will create a collection of phase for an export and use it to export the files of a configuration.

phases is a collection of PRPhase. To create this collection I collect all the subclasses of PRPhase and I sort the by priority.

If you want to add a Phase to the export you have to create a new PRPhase subclasse and set a class method named 'priority' that return a number. 