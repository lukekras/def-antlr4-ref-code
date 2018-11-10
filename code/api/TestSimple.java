/***
 * Excerpted from "The Definitive ANTLR 4 Reference",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/tpantlr2 for more book information.
***/
import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.Tree;

import java.io.IOException;
import java.io.FileInputStream;
import java.io.InputStream;

public class TestSimple {
	public static void main(String[] args) throws IOException {
		String inputFile = null;
        if ( args.length>0 ) inputFile = args[0];
        InputStream is = System.in;
        if ( inputFile!=null ) {
            is = new FileInputStream(inputFile);
        }
		CharStream input = CharStreams.fromStream(is);
		SimpleLexer lexer = new SimpleLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		SimpleParser parser = new SimpleParser(tokens);
		ParseTree t = parser.s();
		System.out.println(t.toStringTree(parser));
	}
}
