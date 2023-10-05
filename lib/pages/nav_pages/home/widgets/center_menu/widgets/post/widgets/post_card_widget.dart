
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_web_ui/data/post_entity.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class PostCardWidget extends StatelessWidget {
  final PostEntity post;
  const PostCardWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: linkedInWhiteFFFFFF,
        border: Border.all(
            width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.asset("assets/${post.userProfile}")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "${post.username}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const Icon(
                                  Icons.more_horiz,
                                  size: 26,
                                  color: linkedInMediumGrey86888A,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "${post.userBio}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: linkedInMediumGrey86888A),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 24,
                                      color: linkedInBlue0077B5,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "Follow",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: linkedInBlue0077B5,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${post.createAt} - ",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: linkedInMediumGrey86888A),
                                ),
                                const Icon(
                                  FontAwesomeIcons.earth,
                                  size: 12,
                                  color: linkedInMediumGrey86888A,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                post.tags!.isNotEmpty
                    ? Wrap(
                  children: post.tags!.map((tag) {
                    return Text(
                      "$tag ",
                      style: const TextStyle(color: linkedInBlue0077B5),
                    );
                  }).toList(),
                )
                    : Container(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    "${post.description}"),
                const SizedBox(height: 5,),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Image.asset("assets/${post.postImage}"),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Positioned(
                  child: _singleReactItemWidget(
                      bgColor: Colors.blue.shade200, image: "thumbs_up.png"),
                ),
                Positioned(
                  left: 14,
                  child: _singleReactItemWidget(
                      bgColor: Colors.red.shade200, image: "love.png"),
                ),
                Positioned(
                  left: 30,
                  child: _singleReactItemWidget(
                      bgColor: Colors.amber.shade200, image: "insightful.png"),
                ),
                Positioned(
                  left: 55,
                  child: Text("${post.totalReacts}", style: const TextStyle(fontSize: 13, color: linkedInMediumGrey86888A),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${post.totalComments} comments - ",
                      style: const TextStyle(
                          color: linkedInMediumGrey86888A, fontSize: 12),
                    ),
                    Text(
                      "${post.totalReposts} reposts",
                      style: const TextStyle(
                          color: linkedInMediumGrey86888A, fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 1,
            color: linkedInLightGreyCACCCE,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/${post.userProfile}")),
                  ),
                  const Icon(Icons.arrow_drop_down, color: linkedInMediumGrey86888A,),
                ],
              ),
              _singleActionItemWidget(
                  icon: Icons.thumb_up_alt_outlined, title: "Like"),
              _singleActionItemWidget(
                  icon: FontAwesomeIcons.commentDots, title: "Comment"),
              _singleActionItemWidget(
                  icon: FontAwesomeIcons.retweet, title: "Repost"),
              _singleActionItemWidget(
                  icon: FontAwesomeIcons.paperPlane, title: "Send"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  _singleActionItemWidget({IconData? icon, String? title}) {
    return Row(
      children: [
        Icon(
          icon,
          size: 22,
          color: linkedInMediumGrey86888A,
        ),
        const SizedBox(width: 5,),
        Text(
          "$title",
          style: const TextStyle(color: linkedInMediumGrey86888A, fontSize: 13),
        )
      ],
    );
  }

  _singleReactItemWidget({String? image, Color? bgColor}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: linkedInWhiteFFFFFF)),
      child: Image.asset(
        "assets/$image",
        width: 6,
        height: 6,
      ),
    );
  }
}
