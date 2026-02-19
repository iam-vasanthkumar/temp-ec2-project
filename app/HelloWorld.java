public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Java App Started...");
        try {
            Thread.sleep(600000); // 10 mins
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("Java App Finished after 10 mins");
    }
}
