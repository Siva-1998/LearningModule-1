@restResource(urlMapping='/v1/firstRestAPI')
global with sharing class RestClassGet {
    @httpGet
    global static List<List<string>>RestClassGet() {
        List<List<string>> result = new List<List<string>>();
        List<string> row1 = new List<string>{'Name', 'Age', 'Gender'};
        List<string> row2 = new List<string>{'John', '25', 'Male'};
        List<string> row3 = new List<string>{'Jane', '30', 'Female'};
        result.add(row1);
        result.add(row2);
        result.add(row3);
        return result;
    }
}

/*Public with sharing batch implements database.batchable<sobject>,database.statefull{    
    Public database.querylocator start(database.batchablecontext bc){
        return database.getquerylocator('select id,name from account');
    }

    Public void execute(database.batchablecontext bc,list<sobject> scope){
        system.debug('batch size'+scope.size());
    }

    Public void finish(database.batchablecontext bc){
        system.debug('batch finish');
    }
    database.executebatch(new batch(),100);

    public with sharing scheduleAbleclass1 implements scheduleable{
        public void execute(scheduleablecontext sc){
            database.executebatch(new batch(),100);
    }
    system.schedule(new scheduleAbleclass1(), '0 0 0 * * ?', 'batchjob');
    public with sharing queable implements queueable{
        public void execute(queueablecontext qc){
            database.executebatch(new batch(),100);
        }
    }
    system.enqueuejob(new queable());
}*/