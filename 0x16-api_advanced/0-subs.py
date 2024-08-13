#!/usr/bin/python3
"""queries the Reddit API and returns the number"""
import requests

def number_of_subscribers(subreddit):
    """
    Gives the number of subscribers for a given subreddit.

    Args:
        subreddit (str): subreddit name.  


    Returns:
        int: number of subscribers.
    """

    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"
    }
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 404:
        return 0
    results = response.json().get("data")
    return results.get("subscribers")
