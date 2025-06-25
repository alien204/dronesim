#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist

if __name__ == '__main__':
    rospy.init_node('drone_swarm_controller')
    drones = ['drone1', 'drone2', 'drone3']
    pubs = [rospy.Publisher(f'/{name}/cmd_vel', Twist, queue_size=1) for name in drones]
    rate = rospy.Rate(10)
    hover = Twist()
    hover.linear.z = 0.5  # simple hover command
    rospy.sleep(2)
    while not rospy.is_shutdown():
        for pub in pubs:
            pub.publish(hover)
        rate.sleep()
