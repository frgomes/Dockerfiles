Tools for Big Data and Machine Learning

* Debian Jessie
* Jupyter
* iTorch kernel


### Usage

Create a function like shown below:

    function docker_jessie_torch7 {
        docker run -it --rm \
	           -p 18888:8888 \
                   -v ${HOME}/Documents:/root/Documents \
                   -v ${HOME}/Media:/root/Media \
                   -v ${HOME}/workspace:/root/workspace \
                   rgomes/jessie-torch7
    }

and then call it:

    $ docker_jessie_torch7


### Usage of iTorch

Open the broser at http://127.0.0.1:18888

Run the script below in a new notebook. Refresh the browser if you don't see the plot.

    Plot = require 'itorch.Plot'
    x1 = torch.randn(40):mul(100)
    y1 = torch.randn(40):mul(100)
    x2 = torch.randn(40):mul(100)
    y2 = torch.randn(40):mul(100)
    x3 = torch.randn(40):mul(200)
    y3 = torch.randn(40):mul(200)
    -- scatter plots
    plot = Plot():circle(x1, y1, 'red', 'hi'):circle(x2, y2, 'blue', 'bye'):draw()
    plot:circle(x3,y3,'green', 'yolo'):redraw()
    plot:title('Scatter Plot Demo'):redraw()
    plot:xaxis('length'):yaxis('width'):redraw()
    plot:legend(true)
    plot:redraw()


### Tutorials

This is an excellent tutorial on Lua, Torch7 and neural networks:
* https://www.youtube.com/playlist?list=PLLHTzKZzVU9ebuL6DCclzI54MrPNFGqbW

This is a brief description of what iTorch7 is and how to use some of its functionalities:
* http://github.com/facebook/iTorch
