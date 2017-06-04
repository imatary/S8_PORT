.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$7;
.super Landroid/os/Handler;
.source "SearchActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->initSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v3, "free_form"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.extra.PROMPT"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0415

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SearchActionBarView"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$7;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x22b

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
