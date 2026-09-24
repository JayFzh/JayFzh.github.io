---
permalink: /
title: ""
home: true
redirect_from:
  - /about/
  - /about.html
---

<section class="biography" aria-label="About me" markdown="1">

I am a fourth-year Ph.D. student in the Department of Computer Science and Engineering at Shanghai Jiao Tong University (SJTU), where I am fortunate to be advised by [Prof. Bo Jiang](https://jhc.sjtu.edu.cn/~bjiang/). Prior to that, I received my B.Eng. in Computer Science from Beijing University of Posts and Telecommunications (BUPT) in 2023, under the supervision of [Prof. Jingyu Wang](https://teacher.bupt.edu.cn/wangjingyu).

I am currently a Research Intern (**Qingyun Talent Program**) with the [**Hunyuan AI Infra Team**](https://hy.tencent.com) at Tencent TEG, building infrastructure and systems for large-scale LLM pre-training. Previously, I was a Research Intern with the **Luoshen Cloud Network Research Team** at Alibaba Cloud, advised by [Dr. Yang Song](https://scholar.google.com/citations?user=0JikOGMAAAAJ&hl=zh-CN&oi=sra), where I had a wonderful and rewarding time working on inference infrastructure and Networking for AI, particularly KV cache transfer in prefill–decoding disaggregation.

My research interests center on **LLM pre-training and inference systems** and **Networking for AI**. Most recently, I have been working on improving training efficiency for **long-context LLMs at the scale of ten-thousand GPUs**.

</section>

<section class="content-section" id="news" aria-labelledby="news-heading">
  <span class="legacy-anchor" id="-news" aria-hidden="true"></span>
  <h2 id="news-heading">Selected News</h2>
  {% assign selected_news = site.data.news | where: 'selected', true %}
  {% include news-items.html items=selected_news %}
</section>
