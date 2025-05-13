component restpath="/ext" rest="true"
{

    remote function getAppExtList() httpMethod="GET"
    {
        System.out.println("======================-=======================");
        System.out.println("REST Works");
        return "hi";
     }
}
