---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

I am a Ph.D. student in the Department of Computer Science and Engineering at **Shanghai Jiao Tong University (SJTU)**, advised by [Prof. Bo Jiang](https://jhc.sjtu.edu.cn/~bjiang/). Before that, I received BEng in Computer Science from Beijing University of Posts and Telecommunications (BUPT) in 2023. I am currently a Research Intern at the **Luoshen Cloud Network Research Team**, Alibaba Cloud, focusing on large-scale network systems.

My research interests lie in **networking4AI**, **distributed systems**, and **AI infrastructure**. Recently, I have been focusing on performance optimization for disaggregated LLM serving, particularly on the networking side. 




# 🔥 News
- *2025.12*: &nbsp;🎉🎉 Two papers ("Bifrost" and "CStar Gateway") have been accepted by NSDI 2026!
- *2025.03*: &nbsp;🎉 Our paper "Understanding the Long Tail Latency of TCP in Large-Scale Cloud Networks" has been accepted by APNet 2025!
- *2025.01*: &nbsp; Started as Research Intern at Alibaba Cloud - **Luoshen** Cloud Networking Research Team.
- *2024.08*: &nbsp; Joined Alibaba Cloud as Alibaba Innovative Research (AIR) Intern. 

# 📝 Publications 

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">NSDI 2026</div><img src='images/nsdi26.png' alt="sym" width="70%"></div></div>
<div class='paper-box-text' markdown="1">

[Bifrost: Alibaba's Next-Generation VPC Network with High-Performance Multipath Reliable Transport](https://jayfzh.github.io)

**Zihao Fan**, Xing Li, [Ye Yang](https://yangye-huaizhou.github.io/), Bo Jiang, Bowen Yang, Yilong Lv, Yuke Hong, Yinian Zhou, Junnan Cai, Jiayue Xu, Yunrui Hu, Zhao Gao, Ke Sun, Yimin Liu, Xiangdong Zhang, [Enge Song](https://ng-95.github.io//), [Jianyuan Lu](https://thlujy.github.io/), Xiaoqing Sun, Shize Zhang, Haonan Li, Mingxin Li, [Changgang Zheng](https://changgang-zheng.github.io/Home-Page/), Song Yang, Jun Liang, Biao Lyu, Rong Wen, Zhigang Zong, Shunmin Zhu

**NSDI'26**, Renton, USA 

**[CCF A]** Acceptance Rate: 100/452=22.1%
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">NSDI 2026</div><img src='images/nsdi26.png' alt="sym" width="70%"></div></div>
<div class='paper-box-text' markdown="1">

[CStar Gateway: Augmenting Public Cloud Infrastructure for Heterogeneous Network Function Virtualization](https://jayfzh.github.io)

Haonan Li, Tian Pan, Jin Ke, Baohai Hu, [Changgang Zheng](https://changgang-zheng.github.io/Home-Page/), [Enge Song](https://ng-95.github.io//), Zhi Xu, [Ye Yang](https://yangye-huaizhou.github.io/), Bowen Yang, Donglin Lai, Yisong Qiao, Bengbeng Xue, [Jianyuan Lu](https://thlujy.github.io/), Xiaoqing Sun, Shize Zhang, **Zihao Fan**, Mingxin Li, Song Yang, Jun Liang, Xionglie Wei, Biao Lyu, Rong Wen, Zhigang Zong, Jiao Zhang, Tao Huang, Shunmin Zhu

**NSDI'26**, Renton, USA 

**[CCF A]** Acceptance Rate: 100/452=22.1%
</div>
</div>


<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Preprint</div><img src='images/real.jpg' alt="sym" width="70%"></div></div>
<div class='paper-box-text' markdown="1">

[Real: Efficient Distributed Training of Dynamic GNNs with Reuse-Aware Load Balancing Scheduling](https://jayfzh.github.io)

**Zihao Fan**, [Yunzhuo Liu](https://liu445126256.github.io/), Bo Jiang, Tian Guo

Preprint
</div>
</div>




<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Preprint</div><img src='images/cornucopia.png' alt="sym" width="70%"></div></div>
<div class='paper-box-text' markdown="1">

[Cornucopia: Elastic GPU Cluster Management for Mixed Batch-Interactive Distributed Training](https://jayfzh.github.io)

Zimeng Huang, Shijian Li, **Zihao Fan**, Bo Jiang, Tian Guo

Preprint
</div>
</div>


<div class='paper-box'><div class='paper-box-image'><div><div class="badge">APNet 2025</div><img src='images/apnet2025.png' alt="sym" width="60%"></div></div>
<div class='paper-box-text' markdown="1">

[Understanding the Long Tail Latency of TCP in Large-Scale Cloud Networks](https://jhc.sjtu.edu.cn/~bjiang/papers/Fan_APNet2025_TCP.pdf)

**Zihao Fan**, [Enge Song](https://ng-95.github.io//), Bo Jiang, Yang Song, Yuke Hong, Bowen Yang, Yilong Lv, Junnan Cai, Chao Wang, Yi Wang, Yehao Feng, Dian Fan, [Ye Yang](https://yangye-huaizhou.github.io/), Shize Zhang, Xiaoqing Sun, [Jianyuan Lu](https://thlujy.github.io/), Xing Li, Jun Liang, Biao Lyu, Zhigang Zong, Shunmin Zhu

**APNet'25**, Shanghai, China

**[CCF C]** Acceptance Rate: 34/133=25.6%
</div>
</div>

<!-- 暂时注释掉示例论文
<div class='paper-box'><div class='paper-box-image'><div><div class="badge">CVPR 2016</div><img src='images/500x300.png' alt="sym" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[Deep Residual Learning for Image Recognition](https://openaccess.thecvf.com/content_cvpr_2016/papers/He_Deep_Residual_Learning_CVPR_2016_paper.pdf)

**Kaiming He**, Xiangyu Zhang, Shaoqing Ren, Jian Sun

[**Project**](https://scholar.google.com/citations?view_op=view_citation&hl=zh-CN&user=DhtAFkwAAAAJ&citation_for_view=DhtAFkwAAAAJ:ALROH1vI_8AC) <strong><span class='show_paper_citations' data='DhtAFkwAAAAJ:ALROH1vI_8AC'></span></strong>
- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare aliquet ipsum, ac tempus justo dapibus sit amet. 
</div>
</div>

- [Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare aliquet ipsum, ac tempus justo dapibus sit amet](https://github.com), A, B, C, **CVPR 2020**
-->

<!-- # 🎖 Honors and Awards
- To be added...  -->

# 📖 Educations
- *2023.09 - Present*, **Ph.D. in Computer Science**, Shanghai Jiao Tong University, Shanghai, China
  - Advisor: Prof. Bo Jiang
  - Research Focus: Networking4AI, Distributed Systems, AI Infrastructure
- *2019.09 - 2023.06*, **B.Eng. in Computer Science**, Beijing University of Posts and Telecommunications, Beijing, China
  - Rank: Top 3% in major 

<!-- # 💬 Invited Talks
- To be added... -->

# 💻 Internships
- *2025.01 - Present*, **Research Intern**, Luoshen Cloud Networking Research Team, Alibaba Cloud
  - Focus: Large-scale network systems and AI infra
- *2024.08 - 2025.01*, **AIR Intern**, Luoshen Cloud Networking R&D Team, Alibaba Cloud
  - Focus: Transport protocols and virtual private cloud (VPC)
- *2021.04 - 2021.09*, **Reseach Assitant**, Wangxuan Institute of Computer Technology, Peking University
  - Foucs: Computer vision and object detection