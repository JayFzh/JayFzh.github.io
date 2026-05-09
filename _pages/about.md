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

I am a third-year Ph.D. student in the Department of Computer Science and Engineering at Shanghai Jiao Tong University (SJTU), advised by [Prof. Bo Jiang](https://jhc.sjtu.edu.cn/~bjiang/). 
Before that, I received B.Eng. in Computer Science from Beijing University of Posts and Telecommunications (BUPT) in 2023, supervised by [Prof. Jingyu Wang](https://teacher.bupt.edu.cn/wangjingyu).
I am currently a Research Intern (**Qingyun Talent Program**) at **Hunyuan AI Infra Team**, Tencent TEG, focusing on LLM pre-training.
Before that, I was a Research Intern at the **Luoshen Cloud Network Research Team**, Alibaba Cloud, advised by [Dr. Yang Song](https://scholar.google.com/citations?user=0JikOGMAAAAJ&hl=zh-CN&oi=sra), focusing on large-scale network systems.

My research interests span infrastructure optimization for LLM pre-training and inference, with a particular focus on Networking for AI. 
Recently, I have been working on optimizing LLM pre-training in supernode-based GPU clusters.




# 🔥 News
- *2026.05*: &nbsp;🎉 Our paper ("Diana") has been accepted by IAC 2026!
- *2026.04*: &nbsp;🎉🎉 Two papers have been accepted by APNet 2026!
- *2026.03*: &nbsp;🎉 Joined Tencent TEG **Hunyuan** AI Infra Team as Research Intern (Qingyun Talent Program).
- *2025.12*: &nbsp;🎉🎉 Two papers ("Bifrost" and "CStar Gateway") have been accepted by NSDI 2026!
- *2025.03*: &nbsp;🎉 Our paper "Understanding the Long Tail Latency of TCP in Large-Scale Cloud Networks" has been accepted by APNet 2025!
- *2025.01*: &nbsp;🎉 Started as Research Intern at Alibaba Cloud - **Luoshen** Cloud Networking Research Team.
- *2024.08*: &nbsp;🎉 Joined Alibaba Cloud as Alibaba Innovative Research (AIR) Intern. 

# 📝 Publications 

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">IAC 2026</div><img src='images/IAC2026.png' alt="sym" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[Diana: A Satellite-Based Lunar Time and Frequency System](https://jayfzh.github.io)

Changgang Zheng, Luyuan Wang, Jionghui Li, Haonan Li, **Zihao Fan**, Mingxin Li, Bo Jiang, Tian Pan, Jinjun Zheng

**IAC 2026**, Antalya

</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">APNet 2026</div><img src='images/apnet2026.png' alt="sym" width="50%"></div></div>
<div class='paper-box-text' markdown="1">

[Integrating AI Clusters into Virtual Private Cloud](https://jayfzh.github.io)

Yinhe Wang, Xing Li, Enge Song, **Zihao Fan**, Changgang Zheng, Haonan Li, et al.

**APNet'26**, Singapore

**[CCF C]** Acceptance Rate: 39/147=26.5%
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">APNet 2026</div><img src='images/apnet2026.png' alt="sym" width="50%"></div></div>
<div class='paper-box-text' markdown="1">

[Single-Core Hotspots on Your VNF? Break Them Up!](https://jayfzh.github.io)

Changgang Zheng, Bowen Yang, Jin Ke, Ye Yang, Enge Song, Haonan Li, **Zihao Fan**, Mingxin Li, et al.

**APNet'26**, Singapore

**[CCF C]** Acceptance Rate: 39/147=26.5%
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">NSDI 2026</div><img src='images/nsdi26.png' alt="sym" width="70%"></div></div>
<div class='paper-box-text' markdown="1">

[Bifrost: Alibaba's Next-Generation VPC Network with High-Performance Multipath Reliable Transport](https://www.usenix.org/system/files/nsdi26-fan.pdf)

**Zihao Fan**, Xing Li, [Ye Yang](https://yangye-huaizhou.github.io/), Bo Jiang, et al.

**NSDI'26**, Renton, USA 

**[CCF A]** Acceptance Rate: 100/452=22.1%
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">NSDI 2026</div><img src='images/nsdi26.png' alt="sym" width="70%"></div></div>
<div class='paper-box-text' markdown="1">

[CStar Gateway: Augmenting Public Cloud Infrastructure for Heterogeneous Network Function Virtualization](https://www.usenix.org/system/files/nsdi26-li-haonan.pdf)

Haonan Li, Tian Pan, Jin Ke, Baohai Hu, Changgang Zheng, ... , **Zihao Fan**, et al.

**NSDI'26**, Renton, USA 

**[CCF A]** Acceptance Rate: 100/452=22.1%
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Preprint</div><img src='images/sibyl.png' alt="sym" width="70%"></div></div>
<div class='paper-box-text' markdown="1">

[SIBYL: Speculative Inference Balancing for XPYD Scheduling in
Disaggregated LLM Serving](../pubs/ICML_26_SIBYL__Speculative_Inference_Balancing_for_XpYd_Scheduling_in_Disaggregated_LLM_Serving.pdf)

**Zihao Fan**, Changgang Zheng, Bo Jiang, et al.

In submission
</div>
</div>


<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Preprint</div><img src='images/real.jpg' alt="sym" width="70%"></div></div>
<div class='paper-box-text' markdown="1">

[Real: Efficient Distributed Training of Dynamic GNNs with Reuse-Aware Load Balancing Scheduling](../pubs/SIGMETRICS_26_Real__Efficient_Distributed_Training_of_Dynamic_GNNs_with_Reuse_Aware_Load_Balancing_Scheduling.pdf)

**Zihao Fan**, Yunzhuo Liu, Bo Jiang, Tian Guo

In submission
</div>
</div>




<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Preprint</div><img src='images/cornucopia.png' alt="sym" width="70%"></div></div>
<div class='paper-box-text' markdown="1">

[Cornucopia: Elastic GPU Cluster Management for Mixed Batch-Interactive Distributed Training](../pubs/Cornucopia_JPDC_Revised_Manuscript.pdf)

Zimeng Huang, Shijian Li, **Zihao Fan**, Bo Jiang, Tian Guo

In submission
</div>
</div>


<div class='paper-box'><div class='paper-box-image'><div><div class="badge">APNet 2025</div><img src='images/apnet2025.png' alt="sym" width="60%"></div></div>
<div class='paper-box-text' markdown="1">

**Understanding the Long Tail Latency of TCP in Large-Scale Cloud Networks**

**Zihao Fan**, Enge Song, Bo Jiang, Yang Song, et al.

**APNet'25**, Shanghai, China

[Paper](../pubs/APNet25-Understanding.pdf) \| [Link](https://dl.acm.org/doi/10.1145/3735358.3735393) \| [BibTex](https://scholar.googleusercontent.com/scholar.bib?q=info:hL7Qa4bsmKkJ:scholar.google.com/&output=citation&scisdr=ClhdExH4ELaBqDG7K5k:AFyMTJUAAAAAaf69M5mWIWbGP2nCrrntiwWbVhc&scisig=AFyMTJUAAAAAaf69M92u6dQAzki9zmfZRvSjwtc&scisf=4&ct=citation&cd=-1&hl=zh-CN)

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

<div style="display: flex; align-items: center; margin-bottom: 20px;">
  <img src="images/sjtu-logo.png" alt="SJTU Logo" style="width: 80px; height: 80px; margin-right: 20px; object-fit: contain;">
  <div>
    <strong>2023.09 - Present, Ph.D. in Computer Science</strong><br>
    Shanghai Jiao Tong University, Shanghai, China<br>
    Advisor: Prof. Bo Jiang<br>
    Research Focus: Networking4AI, Distributed Systems, AI Infrastructure
  </div>
</div>

<div style="display: flex; align-items: center; margin-bottom: 20px;">
  <img src="images/bupt-logo.png" alt="BUPT Logo" style="width: 75px; height: 75px; margin-right: 25px; object-fit: contain;">
  <div>
    <strong>2019.09 - 2023.06, B.Eng. in Computer Science</strong><br>
    Beijing University of Posts and Telecommunications, Beijing, China<br>
    Advisor: Prof. Jingyu Wang<br>
    GPA: 91.17/100, Rank: Top 3% in major
  </div>
</div>

<!-- # 💬 Invited Talks
- To be added... -->

# 💻 Internships

<div style="display: flex; align-items: center; margin-bottom: 20px;">
  <img src="images/hunyuan-logo.png" alt="Tencent Logo" style="width: 65px; height: 65px; margin-right: 35px; object-fit: contain;">
  <div>
    <strong>2026.03 - Present, Research Intern (Qingyun Talent Program)</strong><br>
    Hunyuan AI Infra Team, Tencent TEG, Beijing<br>
    Focus: LLM pre-training systems
  </div>
</div>

<div style="display: flex; align-items: center; margin-bottom: 20px;">
  <img src="images/alibabacloud-logo.png" alt="Alibaba Logo" style="width: 65px; height: 65px; margin-right: 35px; object-fit: contain;">
  <div>
    <strong>2025.02 - 2026.02, Research Intern</strong><br>
    Luoshen Cloud Networking Research Team, Alibaba Cloud, Hangzhou<br>
    Focus: Large-scale network systems and AI infra
  </div>
</div>

<div style="display: flex; align-items: center; margin-bottom: 20px;">
  <img src="images/alibabacloud-logo.png" alt="Alibaba Logo" style="width: 65px; height: 65px; margin-right: 35px; object-fit: contain;">
  <div>
    <strong>2024.08 - 2025.02, AIR Intern</strong><br>
    Luoshen Cloud Networking R&D Team, Alibaba Cloud, Hangzhou<br>
    Focus: Transport protocols and virtual private cloud (VPC)
  </div>
</div>

<div style="display: flex; align-items: center; margin-bottom: 20px;">
  <img src="images/pku-logo.png" alt="PKU Logo" style="width: 65px; height: 65px; margin-right: 35px; object-fit: contain;">
  <div>
    <strong>2021.04 - 2021.09, Research Assistant</strong><br>
    Wangxuan Institute of Computer Technology, Peking University, Beijing<br>
    Focus: Computer vision and object detection
  </div>
</div>

# 🎖 Honors and Awards
- **NSDI Student Grant**, 2026
- **APNet Travel Grant**, 2025
- **Outstanding Graduates**, BUPT, 2023
- **Second Prize**, The Chinese Mathematics Competitions (CMC), 2022
- **Merit Student**, BUPT, 2021, 2022
- **Academic Scholarship**, BUPT, 2020, 2021, 2022