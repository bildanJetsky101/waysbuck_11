import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import InputGroup from 'react-bootstrap/InputGroup';
import paperclip from '../../assets/paperclip.png';
import product from '../../assets/product.png';
import NavbarList from '../../components/Navbar';
import React from 'react';
import { useState } from 'react';
import { useNavigate } from 'react-router';
import { API } from '../../config/api';
import { useMutation } from 'react-query';


function Product() {

    let navigate = useNavigate()

    const [form, setForm] = useState({
        image: '',
        name: '',
        price: '',
      });

    const handleChange = (e) => {
        setForm({
          ...form,
          [e.target.name]:
            e.target.type === 'file' ? e.target.files : e.target.value,
        });
    
        // Create image url for preview
        // if (e.target.type === 'file') {
        //   let url = URL.createObjectURL(e.target.files[0]);
        //   setPreview(url);
        // }
      };

    const handleSubmit = useMutation(async (e) => {
        try {
          e.preventDefault();
    
          // Configuration
          const config = {
            headers: {
              'Content-type': 'multipart/form-data',
            },
          };

          const dataProduct = {
           name:form.name,
           image:'',
           price: parseInt(form.price)
          }
          const body = JSON.stringify(dataProduct);
    
          // Store data with FormData as object
          // const formData = new FormData();
          // formData.set('image', form.image[0], form.image[0].name);
          // formData.set('name', form.name);
          // formData.set('price', form.price);
    
          // console.log(dataProduct);
          // console.log(form.name)
    
          // Insert product data
          const response = await API.post('/product', body, config);

          
          setForm({
            image: '',
            name: '',
            price: '',
          })

          // navigate('/transaction');
        } catch (error) {
          console.log(error);
        }
      });


  return (
    <>
        <NavbarList />
        <div className='container-add-product'>
        <Row style={{marginTop: "70px" }}>

        
            <Col xs={12} md={7}>
            <div className='form-product'>
                <Form onClick={(e) => handleSubmit.mutate(e)}>
                
                    <h1 style={{color: "#BD0707",textAlign: "left", marginBottom: "50px" }}>Product</h1>

                    <Form.Group className="mb-10" style={{marginBottom: "20px"}}>
                    <Form.Control name="name"  onChange={handleChange} type="text" placeholder="Name product" />
                    </Form.Group>
            
                    <Form.Group className="mb-10" style={{marginBottom: "20px"}}>
                    <Form.Control name="price"  onChange={handleChange} type="number" placeholder="Price" />
                    </Form.Group>

                    <InputGroup className="mb-3" style={{border: "1px red solid",    
                     borderRadius: "6px"}}>
                    <Form.Control
                    placeholder="Photo Product" name="image" onChange={handleChange} type="file"/>
                    <InputGroup.Text id="basic-addon2" style={{backgroundColor: "white"}}>
                        <img src={paperclip} style={{width: "12px", height: "12px" }}></img>
                    </InputGroup.Text>
                    </InputGroup>

                    <Button className='btn-add-product' type="submit" style={{textAlign: "center"}}>
                    Add Product
                    </Button>
                </Form>
                </div>
            </Col>
        

            <Col xs={12} md={4}>

                <div className='img-product'>
                    <img src={product} style={{height: "400px"}} ></img>
                </div>
            </Col>
        </Row>
        </div>
      </>
  );
}


export default Product;