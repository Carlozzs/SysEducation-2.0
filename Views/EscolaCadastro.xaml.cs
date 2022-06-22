using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System_Escola.Models;

namespace System_Escola.Views
{
    /// <summary>
    /// Lógica interna para CadastroEscola.xaml
    /// </summary>
    public partial class EscolaCadastro : Window
    {
        private Escola _escola = new Escola();

        public EscolaCadastro()
        {
            InitializeComponent();
            Loaded += CadastroEscola_Loaded;
        }

        public EscolaCadastro(Escola escola)
        {
            InitializeComponent();
            _escola = escola;
            Loaded += CadastroEscola_Loaded;
        }

       

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            _escola.Nome = txtbox_nome.Text;
            _escola.Razao = txtbox_razao.Text;
            _escola.Cnpj = txtbox_cnpj.Text;
            _escola.Inscricao_est = txtbox_inscriacaoestadual.Text;

            _escola.Tipo = "Pública";
            if ((bool)rd_prive.IsChecked)
                _escola.Tipo = "Privada";

            _escola.Data_criacao = dp_data.SelectedDate;
            _escola.Responsavel = txt_responsavel.Text;
            _escola.Telefone_res = txt_telefoneres.Text;
            _escola.Email = txt_email.Text;
            _escola.Telefone_esc = txt_telefone.Text;
            _escola.Rua = txt_rua.Text;
            _escola.Numero = txt_numero.Text;
            _escola.Bairro = txt_bairro.Text;
            _escola.Complemento = txt_complemento.Text;
            _escola.Cep = txt_cep.Text;
            _escola.Cidade = txt_cidade.Text;
            _escola.Estado = cb_estado.Text;

            try
            {
                var dao = new EscolaDAO();

                if (_escola.Id > 0)
                {
                    dao.Update(_escola);
                    MessageBox.Show("Registro Atualizado com Sucesso!");
                }
                else
                {
                    dao.Insert(_escola);
                    MessageBox.Show("Registro Salvo com Sucesso!");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void txt_bairro_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void CadastroEscola_Loaded(object sender, RoutedEventArgs e)
        {
            txtbox_nome.Text = _escola.Nome;
            txtbox_razao.Text = _escola.Razao;
            txtbox_cnpj.Text = _escola.Cnpj;
            txtbox_inscriacaoestadual.Text = _escola.Inscricao_est;
            if (_escola.Tipo == "Público")
            {
                rd_publico.IsChecked = true;
            }
            else
            {
                rd_prive.IsChecked = true;
            }
            txt_responsavel.Text = _escola.Responsavel;
            txt_telefoneres.Text = _escola.Telefone_res;
            txt_telefone.Text = _escola.Telefone_esc;
            txt_email.Text = _escola.Email;
            txt_rua.Text = _escola.Rua;
            txt_numero.Text = _escola.Numero;
            txt_bairro.Text = _escola.Bairro;
            txt_complemento.Text = _escola.Complemento;
            txt_cep.Text = _escola.Cep;
            txt_cidade.Text = _escola.Cidade;
            cb_estado.Text = _escola.Estado;
            dp_data.SelectedDate = _escola.Data_criacao;

        }

        private void txt_numero_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
