.class Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;
.super Ljava/lang/Object;
.source "SpinnerMenuAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$500(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v6

    array-length v1, v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v6

    aget-object v0, v6, v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/Group;->getChildrenCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/Group;->getTitleItem()Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$500(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/Group;->getTitleItem()Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$500(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/drawer/Group;->getChild(I)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_1

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/drawer/Group;->getChild(I)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->setGroupFirstItem(Z)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/drawer/Group;->getChild(I)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/drawer/DrawerItem;->setGroupFirstItem(Z)V

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$601(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$700(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/4 v6, 0x3

    iput v6, v5, Landroid/os/Message;->what:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$5;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$700(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method
