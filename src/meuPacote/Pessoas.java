package meuPacote;
import java.util.Calendar;

public class Pessoas{
	private Integer id;
	private String nome;
	private Calendar nascimento;
	private Double altura;
	
	public Integer getId(){return this.id;}
	public void setId(Integer id){this.id = id;}
	
	public String getNome(){return this.nome;}
	public void setNome(String nome){this.nome = nome;}
	
	public Calendar getNascimento(){return this.nascimento;}
	public void setNascimento(Calendar nascimento){this.nascimento = nascimento;}
	
	public Double getAltura(){return this.altura;}
	public void setAltura(Double altura){this.altura = altura;}
	}