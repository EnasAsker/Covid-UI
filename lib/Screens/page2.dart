import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/page3.dart';
import 'page3.dart';
void main (){
  runApp(page2());
}
class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Full Face Spandau', style: TextStyle(color: Colors.black, fontWeight:
        FontWeight.bold, fontSize: 35),),
        centerTitle: true,
        shadowColor: Colors.transparent,
        actions: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.share, color: Colors.black,))],
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Text('Please follow these instructoins striktly.', style: TextStyle(
                color: Color(0xff97CB9A), fontSize: 40),),
          ),
          Column(
            children: [Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:EdgeInsets.all(20),
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Stay at home', style: TextStyle(fontSize: 20, color: Colors.black),),
                      Image.network('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQTEhISERMVFRUWFxUYFhYXFhkVFxUWGRgYFhcVFRYYHSggGBolGxUYITEhJikrLi4uFx80OTQsOCgtLisBCgoKDg0OGxAQGi0lICYtLS0rLSstLS0tLS0tKy0tLS0tLS0rLS0tLS0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABgIDBAUHAQj/xABEEAABBAADBAYFCAcIAwAAAAABAAIDEQQSIQUGMUETUWFxgZEiMlKhsQcUFRYjQsHRYnKCk9Lh4hczU1SSosLTQ2Oy/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAEDBAIFBv/EADQRAAIBAgQDBQcDBQEAAAAAAAABAgMRBBIhMUFRcSJhkdHhBRMUgaHB8EKSsRVScoLTI//aAAwDAQACEQMRAD8A7iiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiK2+UD8kBcVqeZrQS40ACTz0Gp0WO+cnsWDtDFxRtuZ7WNd6NuNAkg6eQKhtLci7ex8/zbBxrpJHNDyC55H2o4EkjTN1J9Xsb7L/3o/iXWcJLhHvaxro7c4NFOvUmhpa3f0XhRKIbt5vTXiADR8NfBMP7T98nkpy06eZVWwlSlbPOKv1OY/Jxs/EQY6OSfMGZXtsvzek4AN0BPPmuyFzuQJ8QPiVEMfjMLG9wY+IOZdekNHt7L5ELR4TebDmOPpsXtLpMjekyxx5c9DNX2XC7VXxSxN3DstaatLw3/AILo4apTtn1vron6HS/T9k/6m/mvHPeBZBAHH0h+a519Y8J/m9qfu4/+pPrFg/8AN7U/dx/9Sraq8JL9y/5luSP9r8H5nSRM7rVbcSeYWq2DjGTQsfE98gqszwBJY9sAAB2vUFsuhd1LT0M+qMhuIHPRXAb4LD6B3UvRG4cAUJuZqLFbORo4LIDr4KToqREQBERAEREAREQBERAEREARFjYiXkPH8kDYln5N8/yWOi8UHFzS717yRYGHpZbJJqOMes93UOoDmeXkFx3eD5Q8Vihkc2JjLzNaGZi0jgc7jxokXQ4rJ+WHGuftAsJ9GGNgaOVuGdx8bA/ZCwd3N0DJLIMUHMbG1ji0VmfmsgW26FNN1qtGWlCnmqcfzRcSKcalSpanvffa3z4GFs3el8T2SZG2xzXAjTVpsaHQ8Oxdr2ftXFTxR4iGDCOLxmEuZ1FpFDSswdxBs8qXMN790sxbPg2GnUHRAZSCBQc0Orq9Xja6L8lmz5oMAxmIaWOL5HNY7i1jjYscrNmu1ZlCjKGel2b7pP7ar5rc01ZVoSy1Upcm199PB7Gim3MxbnOc5sVuJcfT5k2fu9ZVP1HxXsxfvP6V01eLJ8DS7/H0Lf6hW7vD1OZ/UfFezF+8/pT6j4r2Yv3n9K6YifA0u/x9CP6hW7vD1MLdXZ/QQxxloDgCX5dQXHib56Utqx5sa81Rh/WCvNg1u1rjFRSiuBmzOTcnxZcvtXvildq1G38dJE1hZwc4hz8ubLpY0vmea6Su7ESeVXZlz+sVSx5HBUYEPkjZI8BrnNBLdRR7uSuvhIF6KDnfUyYpQ7vV1a5rq1Czo32LUnSZWiIhIREQBERAEREAREQFMjqBKwCsnF8AFiqDiQRY+LxscQBkcG3w4knuA1WIdv4f/E/2P/hUqLeyK3OK0bRz35X91ZHvGNhaXjIGzNbq5obeWQDmKNHqodtYu428Xzh72yBolplOGnSNZetX6wzXp19i6ozaUZALSSDwNEfGlGdrbpYeSUTxxiKUG80foWesgeiSedjVcVpwlTySWq2tw28jbhFUhUU1onvfj+XZr9pYuHDRF8mVrGW5rdNX6kZB7Rs+anQlDI2k9TeHctP9D4eeIQ4qGN9WG5mgmj7Lxq06ngVtNotqMAciAqsPTiop8Xv+eJ3ja0pzy2slt395bwm0xK4tjY80LJ9EAa0OLuevkvcdtHoi3pI3gOGhGUjTlo5ajYGPZE6QvNAgVoTqD2K5vDtKOVrAwklpN2K0IWvLqYuBlfWGP2X+Q/NPrBH7L/Ifmo0i6yIhskv1gj9l/kPzVX1ij6n+Q/NRhbDC7MLtXGh1DU/yXMlGO51GMpuyN9gNsRy58pLcos5qGnXd1S2WGeCQQbBFg3oRWhUYxWymGJ8YBAcNSCbPPU89eXBarYGNkwpdh5pGhjtIHOBIzEjTS8rddb4FVxalsdVKcqer+h0Y9hpUzVlK1BgxPXDz5n+HvToMT1w+Z4X+r1Lqxx7zuZlq7h30e9Y0DXgVJlzfo3VcuPNXFzsE+JskXgK9UlgREQBERAEREAREQGNi+XisZZmIbbe5YahnDIpvKT03c1te/wDFaLEtUk3pj9NjutpHkf6loJIy7QLbTfYR41dWqvqSGMeiO4fBZ0LrAWFGwhrb9kfBZGFPELynufW3urleIGgI4grIxz7iB66VqUaFUdLcWXmCPJWUn2jNiY3jfl9yNu4lUr13ErxbDCWpMUxppzgCqPn0fthaHbn96e4LBpdqKK3IlgxsfthSDYmMZZZKasUHdR5LmsHrN71MlxOmnuW0qklqiSzvAsAh3IVzXm09lNdC05Q58RztJF+kNT38OHYFg7svL3uDjeQAjzrVScFZYwcGaK1VTSSK8JOHsY8cHNJ4eY81V0muX9HjSjuxtpluImwYa4Blva7kAaNd3paHvUjjc481Y1ZlSlctzcfAfBUKqS71RjbIC5OWZsfAdwVaIpLAiIgCIiAIiIAiIgCwJY6PwWeqJGWKQhojG9EVxtd7LvcR+YC0mBYaPo6HmpTteG4pW9QJ8Rr+C0mzMOySEB7Wuon1gDXPn3riviJ0aGaCTd7a9LmaGGjVxNpNrs30twsuJdYSWtvkKXrTWoVYwkcY9BjW3xytAvyVtefh8ROq5Zlty7z3sqikkZjXWFhqvDzN9IZhfVYtUT4eQAFrOPMloA8ytN+K+hxotJaddP5NJJoSCeBK8zDrCyxhmWekAcb19MN18CrjIcPf927wff4LT8TFK8k11TMPws3K0HF9JLzIntTAvfIXNArTmFiTYN7WekOHDW+8LoYwGD9r/eVXPu7A+M9Hdkeic1i+R7lo96jI4anMMKLe0dqmGYdYUQxUJY8tOhB8uzwK6Ju7gIMRAySjm4PGY6PHHz4+K6qOyuRAboevL+qPipQsCLCw4Zr5B6Iq3Ekk0ATQ/JajG744cxvDDJmIIH2bhx0VFnJ3RZotzcbEpxklP33afqt0H4rcOKjm7+2IJQIoibY0XmaW311fHVbwz5WkngAT5KHo7HUWV9I1ziz7zQCey+HwVzDR1Z8FG90cZnknDj6TsrvDUHysKVgJKOV2IpTzxUj1ERQWBERAEREAREQBERAFS91AlVK3N6pQHP8Afjb8+HkZHEWhrmEklocXEkgjXkKHmolhd4547yka8i0V3ro+8W7rMXkzucwsui2jYNWDfcFBN8N3WYRsZjkc9z3EU6gA0DU6dpC8zFQrdp37PX7dT0MI8O8sXFZ+dvv0LLN6sQXtLi0jgW5aB/G1k4jeaR2jWsaOfE342Fo948E7C4fDz1ZkrMOTczc7aPcCo4NvPNANGvaUp4HFOCyLTqvMtljMLGWu67mTkbfkGgbGP2T/ABKtm8MnNrCPEfioltLGviAJAsmuPmtf9Pv9keZVVHB4itBTht1RdVxtKlLLN69Dos222OjdQLZNKBFg69f5rXfS0nWPJQv6ef7I8yqHbxPH3B/qK0/B46KstP8AZeZmli8HJ3lv/i/Im30tL1jyCsPxbiSSeK3e6uwcNjoGzxTSjXK9hDbjeKJaeviCDzBC3H9n8f8AjS+TVW6WMTtmfix77Bv9K/b6EHkdm4rO2TtmbDhwhdQdRIIDhY568FKv7P4/8aXyan9n8f8AjS+TUdPGP9T/AHMe9wa2iv2+hHMXvLiJAA94IBsei0a+AXkeNlLC4O1BHIcNb/BWMHsi8ccJI5zW53tDhV6AuaaPWAPNSmfdQYeN7mSPeDWYOA0GuorvU4RVqk7Sk7ard6O3XmV42dGlTvGKvo9t1dX4cVci8e2ZWkODhYII9EcRqt5g9u4qVpL5G5DYIyNsjgeWi0eL2bZJacp6uX8lLYt2OjwzZYnukBAeWuAsAizVcaWihQrRrWrNtcNXa/D1RlxWJozwzlh0lLisqulx4W6PXu1NbgMaYJmyDkdR1tPEeX4LqDTYtcmxI1Ui2dva5kWV7c720GG6sfpns969KrBvVHlYSsoqzJRtvHiGIuv0jowdbj+XHwWwXPcA6TGYhpkN63XBrWjU0OXV4roaqnHLZcTVSqOo2+GiX3CIi4LwiIgCIiAIiIAvKXqIDXObRpc5+USTPiYYh91g83u/IBdRnivhxXLvm3zrakwugwu1q66NojGn61LLilmUYc2l8i/C9iUpr9MW114Hu04RPEYZSXMIAq+FeqR1EKFTbnuie2QSNcxrgSCCHVeg0sH3KebPgdLI1g0u9SOAAtUb27NMETbeHZnVQFaAE3x7l6OJrqnRk1yfp9TyMFRruvBPa6vfXbV/RMgO2dkTzZHRR5mgHXM0a3roT2BaLEbJnZ68Lx25bHmLC7ds3dl/Qx+mBbQaynQnWuPaqMbu29jHP6QOyi6DSL96jCyjSowhyS8y7Ezq1K85ZdLu3RaLicIVuQLeb2YDosQaFNeM48SQ4eYvxWmdwW1ao4Jz8jO1+ixjsOT6OIYaH/sjtzT4tzjyXcF8ubGx5w+IgnH/AIpGPPcHAuHi2x4r6ia4HUcDw7lixEe1cug9D1EVLjWp4LOWHPN6W9BtKGbk4xPPgcjvc33qZbxSubCco0JAceppv48PFRn5SYQ+KCZpBAc5tjUU4WNe9h81OdkTNkghfoekja49ttBOniqMO8laa6PzNOJg6mHg0+Djfpsc5mjvUcVf2djZI/Uke2jws5fFvAqVbw7PwzGF1ZHkHIB951aW3hV1fBRB4o35r1YtT1Pn5xlSeW+vCxRijw71bijvuVx5zEALbbEghc/LMSBplrRpPU48lL5nMb6R495Xu3M5s7AwXm9Fw/R5nwq/BT9Y2FwUcYqNgb3cT3niVkrLOSk7nq4ei6UcrdwiIuC8IiIAiIgCIiAIiIC1PKGtc48Ggk9wFrnXyfw5o8dincSCAe2jI73lqlu+mJ6PBYh3MsyDveQz/ktNsCAQ7KHDNIC89ud1D/ZlWeSzV4rkm/HQ0R7NCT5tLw18j3deG3vf7IA8z/StdvqOlxWFw451f7bgD7mlSfdQBsJJ4ucT4DQfArQYeptryv8AuwtNV1hoZ/8ATneSYztJQ5tL7/Y5wnZbnyTfz2X8ksAXkjMwLTzBHnorjq5WqFeZTifyk4amwv5te5h8RfxYoIurfKphwIpidKfG8ftED/kVyfOF6NF3iUT3LLgvpPcXHdNs/CSE2eia1x63M+zd72lfNzl2j5E9rMfhZMMSc8L3Orh9nIbBuq9bPoqsQrxudQep0VY22Iz83lPD0eJ+His9koH3fetNvKZXNOU/Z6Zm6X38LrhzWRblztYicouMwnWMkOLf0hwIN2PBbXdTCn5xHl9WNp0vg2soA7LK1i2WwXSCQmGrynNm4VY99hWuK1lbUhN6K+hJ9vYOJ7M0tjLwc3iLrlz5KEz4arr0hrR4HxHJT7FSXE6yLy68tVHjC32R5LycX7Rq4WpGMbNW2fXnuXwwFHERcpXTvuvyzIzh4Ha20qRbv7Likd9oS5w1y1Tavmefdp4q70DfZHktju+KfJXU1V0Pa9atVjCySe9r8m+ZMvZdCnFzd2++1v4N6iIvVKwiIgCIiAIiIAiIgLcsmVYzsQT2LKkjB4rHfhuo+aEO5DflGlcYYYQfSllA76B/5OatlttgjwzIxwGRo7mj+StbZ2TJNjMLJQ6KG3ON65rsUOerWra4/BCUNDiQAb0596ppL/1lJ9y+SXm/oWVGvdwgu9vq/RHuBjyRMB5NF/EqObiMz/OcQeMkhr3vPvf7lItpse6GVsfruY4N1rUihr4rG3c2eYMPHG6swsurXUknj5KJJyqxfBJv5vTzEJKNGS4tpfJa+RskRFaUEa3u2cyYsZKLZIMj+RoG7B5HXj2LneL+T2Br3tEs1BzhxYeBr2F2DaGCEoAJIo2COPvWuxG7zXOc7pCMxJ4A8TfWtFKooqzM+IhUklkOa4ncvCMIa3pJBQOZzyHWeIIZQ0OnBS/cLAYPDZhE0smkAa8ue5weASW5cxoceGi3H1YYfWkce4AfG1VFuvCOJe7vcB8ApnUi1a7OKcayd2jeLB2xickTjzOg7z/Kys1RreWYmQM5NA8zz+Coirs1s15xz+dHvaD+Cy935XfOiTWV8RboAKc12YaDsc7yWrPj7/wVcUhBBaSCNQVZKnFkqpLmTjENtrh2FalbiJ1taesA+YWvxeDdmJYDR6ha8P2rh5SUakdbaM24OqleL6mMs3Yj6c93LQLEGBkPJ3lS3uFwYa0D3dvNZvZuHk6udpq3c+OnEvxVVKGVbszAV6iL6E84IiIAiIgCIiAIiIAqS2xRVSIDFdhjyKtmF3Us5FFiLGvLT1KlbJeUliMprkWfkHUPJUSZQC4gAAEk1yHFLDKYaLB+k3uAfGyPJnawtN9JqRr1DQ3zW4lfG0EuLRXGyBV8LUuJCRjIrWz8ewsJldGHNLgToBQcWg+Ne5ZrcRGTQcwnhQIuzwFI0LGOtRtzZLpKfGLcBRHWOztUnC9RaO5OU56zZMxNCJ/i2h5nRXW7ExF/3R8S2vip6i7zsZEQ2baOIge3PIxx+9GMpodRoaHuUyWAdlRdJ0pYC674mr664Ws9ctkpBERQSEREAREQBERAEREAREQBERAEREAREQBW5WBwLSLBBBHWDoVcRARja2A6N1srK4D1iGtYWkUL0oFlt6/NY0GFF5rLqcCPspJLAFZXGgDp28hSlb4mkgkAkcCeV9SurrMc5SJfRotpAl04gwmnG3WazChTqrsVk4ctcyNmYPJOUujyk5iRd5vuhzjwUzVBYLBoWOB5hMwylGFgDGNY3g0UFeRFydBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQH/9k=',
                      height: 150,width: 150,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.all(20),
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text('Separate yourself', style: TextStyle(fontSize: 20, color: Colors.black),),
                     Image.network('https://cdn.dribbble.com/users/4994430/screenshots/10773855/media/542a8db2a6688b0cbffec891c7ac9fb1.png',
                      width: 150, height: 150,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text("Don't share your stuff", style: TextStyle(fontSize: 20, color: Colors.black),),
                      Image.network('https://previews.123rf.com/images/mironovkonstantin/mironovkonstantin1809/mironovkonstantin180900092/108941204-teamwork-of-colleagues-in-the-meeting-room-office-with-laptops-coffee-and-chairs-happy-men-and-woman.jpg?fj=1',
                        height: 150, width: 150,)
                    ],
                  ),
                ),
                Container(
                  margin:const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Wash your hands", style: TextStyle(fontSize: 20, color: Colors.black),),
                      Image.network('https://image.shutterstock.com/image-vector/mother-teaching-kid-washing-hand-600w-1678592005.jpg',
                      height: 150, width: 150,)
                    ],
                  ),
                ),
              ],
            ),
            ],
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_){
              return page3();
            }));
          }, child: Text("Still I haven't get the call", style:
            TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(400, 50),
              primary: Color(0xff97CB9A),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
