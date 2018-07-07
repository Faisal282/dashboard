<?php

                                            // UNTUK POSTINGAN
                                            $posting = "SELECT * FROM posting";
                                            $result2 = mysqli_query($connect, $posting);
                                            $num2 = mysqli_num_rows($result2);

                                            ?>
                                        <?php
                                        
                                        if($num2 > 0)
                                        {
                                            $no = 1;
                                            while($data2 = mysqli_fetch_assoc($result2))
                                            {
                                                echo "<tr>";
                                                    echo "<td>" . $no . "</td>";
                                                    echo "<td>
                                                    <a href='form-update.php?id= " . $data2['id'] . " '>  
                                                    <button class='au-btn au-btn-icon au-btn--blue au-btn--small'>
                                                        <i class='zmdi zmdi-border-color'></i>Edit
                                                    </button>
                                                    </a>
                                                        </td>";
                                                    echo "<td>  
                                                    <a href='delete.php?id= " . $data2['id'] . " '>                                                      
                                                    <button class='btn btn-danger'>
                                                        <i class='zmdi zmdi-block-alt'></i> Hapus
                                                    </button>
                                                    </a>
                                                        </td>";

                                                    echo "<td>" . $data2['judul'] . "</td>";
                                                    echo "<td>" . $data2['gambar'] . "</td>";
                                                    echo "<td>" . $data2['isi'] . "</td>";
                                                    echo "<td>" . $data2['id'] . "</td>";
                                                echo "</tr>";
                                                $no++;
                                            }
                                        }
                                        else
                                        {
                                            echo "<td colspan='6'>Tidak ada data</td>";
                                        }
                                        ?>