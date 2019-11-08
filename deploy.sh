# Create public folder if don't exist
if [ ! -d "public" ]; then 
	mkdir public
fi

# Copy source content to public
cp -fr source/* public/

# Create js folder if don't exist
if [ ! -d "public/js" ]; then 
	mkdir public/js
fi

# Generate .js files from Scala
sbt fastOptJS

# Move generates . js files to public/js 
cp target/scala-*/*.js public/js/