import java.math.BigInteger;

public class checkSeq {
    public static void main(String[] args) {
        int count = 0;
        int pointer = 0;

        BigInteger num = new BigInteger("37038733764462037052");
        String binaryString = num.toString(2);

        System.out.print("[");
        pointer++;

        while (pointer < binaryString.length()) {
            if (binaryString.charAt(pointer) == '0') {
                pointer++;
                count++;
                continue;
            }
            System.out.print(count + ",");
            pointer++;
            count = 0;
        }
        System.out.print(count + "]");
    }
}
