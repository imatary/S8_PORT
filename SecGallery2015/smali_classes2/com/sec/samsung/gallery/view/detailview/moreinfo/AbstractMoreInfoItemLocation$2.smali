.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;
.super Ljava/lang/Object;
.source "AbstractMoreInfoItemLocation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->createMarkerClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->MAP_ACTIVITY_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "currentImg_Lat"

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)[D

    move-result-object v4

    aget-wide v4, v4, v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string/jumbo v3, "currentImg_Log"

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)[D

    move-result-object v4

    aget-wide v4, v4, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "fromPrivate_Mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-static {v3, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->access$002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;Z)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x30a

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "GDDM"

    const-string/jumbo v5, "location"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "304"

    const-string/jumbo v4, "4525"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
