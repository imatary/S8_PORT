.class Lcom/naver/glink/android/sdk/samsung/c;
.super Lcom/naver/glink/android/sdk/ui/tabs/a;
.source "SamsungTabsCreator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/tabs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/tabs/Tab;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/naver/glink/android/sdk/samsung/c$1;->a:[I

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 type \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_s_cafe:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/naver/glink/android/sdk/samsung/a;->a_(Landroid/content/Context;)Lcom/naver/glink/android/sdk/samsung/a;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_s_post:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v3}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;I)Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_s_photo:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4}, Lcom/naver/glink/android/sdk/model/Menu;->allImages(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_s_mov:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4}, Lcom/naver/glink/android/sdk/model/Menu;->allVideos(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    invoke-direct {v0, p1, v3, v4}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_navi_s_profile:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Landroid/content/Context;Z)Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/Tab;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;ILcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->ALL_ARTICLES:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PHOTOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->VIDEOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NONE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->ALL_ARTICLES:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PHOTOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->VIDEOS:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
