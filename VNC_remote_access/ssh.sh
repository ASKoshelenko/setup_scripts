#!/bin/bash

# Установка OpenSSH сервера
sudo apt update
sudo apt install -y openssh-server

# Проверка статуса SSH-сервера
sudo systemctl status ssh

# Создание директории .ssh и файла authorized_keys для пользователя support
sudo mkdir -p /home/support/.ssh
sudo touch /home/support/.ssh/authorized_keys

# Добавление публичных ключей в authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCmRls6iuufvsvdX603Rweeiti9YqWEmDmYcV/VmHAvtCyBqVkwYmqsSH+7BUMezR5DzZKB/hjJ+OiTvCHsnXyhG8+cbymdfL4FriCN+PergdfRFPEnFhMPqzws21Nkf9r6oBQZs36lFL4wZRxLw6cGYej/Fmpf2hUgfu24435/w1LX56XQmTBqntS3/80dEs/mNALT/qVuXpbD05zfo4L8ow72cUUII2I68eKySL1mHf/V8BemnzR7JagET1NNL4TI9Cah0C8LiAD2xs4l1mAaljNPoxmnCujACJdx7bQxnEOE5RHkYOfs+Tg5Chx/veVfqZ9WownschcRF2bMV8hYqot8JMo2MePMSoZA/DNyd+VL6IU/RQ1nnuMmD+bXFt59A063rPYkC9ttwEsnT+WWqFJRh0WqhQRUuiyXS0LaTcnIgthtk2T4dEfbeDjWuuySrYEEAkpVyWhFlTQDOIa/B5uUBxROPHIwil4Jl46sWK1nZvzJUA14fjT+uu2i4Xk= koshelenko@HP-Laptop-15-db1xxx" | sudo tee -a /home/support/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDcRDrmgeSYywJ03Tbckuee5VBE+7gZp7VHH7JXxbep9wciCE4zv70mewTpHso3zW9BoPOQlEV/mT55Uk9sXFVcd/oGofLsSA41OC/ULzXFaK9sh6tY7Rdvjk4eYwlCrZ/hD1BIxxnaxbdGH5TBzt90ajkTxhBSYEZ/8EH78lqOM7+DfG3BojVwYaKHY9KN6sCfCVUx/Jgbt2iftuG/5h/RBuEJvMr71a3DhyCvcsgOpx3laE8rrKpM4Ji6jZ388SvXIsxCx51nHuf7rTttuK+mJDL2Lmj2n0eZLMrbaVqZR+xHcJkMaZkESwkfmefCNZn8ab0v08LEbkZ8WYhpEwPHgStIcBEGDmKHlc6SckSfUzuFIUofOFvoQlF2Pg7doOaYAEKHg5LK07sv9UhI12VMjyMecCJDYTtno2dJuaw0L3BZ6G+M6HE45jLhZu4HnFdN37RjXasphb5EuIcyj1Xb7oLbp2IEY8qpkHGiFlXHZa2SKRYBps6YESNyh81Ewyc= vlad@MN-HP-255-G8