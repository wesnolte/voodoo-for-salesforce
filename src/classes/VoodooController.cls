global with sharing class VoodooController {
	public static String V_TAG = 'Voodoo'; 
	
	/* Read */
	@RemoteAction
	global static String getTodosAsJson(){
		List<Todo__c> todos = [SELECT id, title__c, isDone__c FROM Todo__c];
		
		String jsonString = JSON.serialize(todos); 
		System.debug(jsonString);
		
		return jsonString;
	}
	
	/* Create */
	@RemoteAction
	global static Id createTodo(String title){
		Todo__c todo;
		
		try{
			todo = new Todo__c();
			
			todo.title__c = title;
			
			insert todo;
		} catch (System.Exception e){
			System.debug(e);
			return '';
		}
		
		return todo.id;
	}
	
	/* Update */
	@RemoteAction
	global static boolean updateTodo(Todo__c t){
		
		try {
			update t;
			
			return true;
		}catch (System.Exception e){
			return false;
		}
	}
	
	/* Delete (many) */
	@RemoteAction
	global static boolean deleteTodos(List<Todo__c> ts){
		delete ts;
		
		return true; 
	}
	
	/* Delete */
	@RemoteAction
	global static boolean deleteTodo(Todo__c t){
		delete t;
		
		return true; 
	}	
}