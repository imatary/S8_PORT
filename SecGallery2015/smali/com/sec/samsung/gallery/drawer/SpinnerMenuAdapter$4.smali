.class Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;
.super Ljava/lang/Object;
.source "SpinnerMenuAdapter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/drawer/IDrawerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->createServicesGroup()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$400(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->getGroupForServies()Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$400(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->getGroupType()Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/Group;->getChildrenCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v2

    aput-object v0, v2, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/Group;->getChildrenCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$4;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method
