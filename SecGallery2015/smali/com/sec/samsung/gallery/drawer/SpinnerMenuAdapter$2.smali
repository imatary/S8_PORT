.class Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$2;
.super Ljava/lang/Object;
.source "SpinnerMenuAdapter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/drawer/IDrawerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->createDefaultGroup()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$2;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$2;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    # getter for: Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefault:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;
    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$200(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->getGroup()Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$2;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    # getter for: Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefault:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;
    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$200(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->getGroupType()Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$2;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    # getter for: Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupArray:[Lcom/sec/samsung/gallery/drawer/Group;
    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$2;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    # getter for: Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupArray:[Lcom/sec/samsung/gallery/drawer/Group;
    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$300(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)[Lcom/sec/samsung/gallery/drawer/Group;

    move-result-object v2

    aput-object v0, v2, v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$2;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method
