   M S B A M L   `   `   `  ����H  DSystem_Escola, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:System_Escola.ViewsSystem_Escola.Views  5   	   $    System_Escola.Views.ListaCurso   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:System_Escola.Views     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	    � Title$ 
ListaCurso��5   	   $	��450��6   $	��800��6)   .��5      � 
������� � RowDefinitions 5   
   �� 5      $��4 �6   �� 5      $��37 �6   �� 5      .+�5   
   �� $��1��6   .+�5      �� ���	#FF312828 �� Padding$ 10q�5      $��18(�6%   
�������$�� ��6F   $��62��6N   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5   1   $��2��6   $��5,5,5,5q�6       
IsReadOnly .    AutoGenerateColumns .     AlternatingRowBackground �	#FFE5E5E5	 �� AlternationCount$	 2��5    X   ��5!      �� 5"      
 �� EndPoint$
 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5#      �  � Color$ 	#FF20A9E5��6#    � Offset$ 0.497Q�65   � 5$      $ 	#FF0585EB��6#   $ 1Q�65   5%         Columns 5'      0  *System.Windows.Controls.DataGridTextColumn  5(      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+  5)      $
 Nome��6%    63   �� *Nome+  5*      $ 	Descricao��6%    68   �� *	Descricao+  5+      $ CargaHoraria��6%    6;   �� *CargaHoraria+  5,      $ Turno��6%    64   �� *Turno+4  .System.Windows.Controls.DataGridTemplateColumn  5.      $ Ações��6)      CellTemplate 5/      �� 50      .R�51      ��  �� Orientation$ 
Horizontal=�6)   .+�52   "   �� -   5        $��Update��53   )    � ToolTip$ Visualizar Registro��54   )   $��0 0 5 0q�6G   6X   �� 55   "   -   5        $��Delete��56   )   $ Excluir Registro��57   )   6D   58      59      5;      5>      �� 5?   
   $��CONSULTAR CURSO��6   $��28(�6*   $��Center=�68   $��Times New Roman)�6U   $��44��6r   $��Center=�6~   $
��Bold"�6�   
�������$��1��6�   5@      5A      