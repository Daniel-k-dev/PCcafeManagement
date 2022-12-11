﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.DataAccess.Client;

namespace TeamProject
{
    public partial class addFoodDataForm : Form
    {

        private OracleConnection odpConn = new OracleConnection();
        FoodManageForm _parent;
        public addFoodDataForm(FoodManageForm inform1)
        {
            InitializeComponent();
            _parent = inform1;
        }

        private int INSERTRow()//사용자 함수 정의
        {
            odpConn.ConnectionString = "User Id=hong1; Password=1111; Data Source=(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) (CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME =xe) ) );";
            odpConn.Open();
            string strqry = "INSERT INTO menu VALUES (:id, :fname, :amm)";
            OracleCommand OraCmd = new OracleCommand(strqry, odpConn);

            OraCmd.Parameters.Add("id", OracleDbType.Int32, 20).Value = idTxt.Text.Trim();
            OraCmd.Parameters.Add("fname", OracleDbType.Varchar2, 20).Value = nameTxt.Text.Trim();
            OraCmd.Parameters.Add("amm", OracleDbType.Int32, 20).Value = ammTxt.Text.Trim();
            return OraCmd.ExecuteNonQuery(); //추가되는 행수 반환
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (INSERTRow() > 0)
            {
                MessageBox.Show("정상적으로 데이터가 추가됨!");
            }
            else MessageBox.Show("데이터 행이 추가되지 않음!");
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
