.class Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$1;
.super Ljava/lang/Object;
.source "MaterialTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->listener:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$OnTabChangeListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;)Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$OnTabChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->listener:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$OnTabChangeListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;)Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$OnTabChangeListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$OnTabChangeListener;->onTabSelected(I)V

    :cond_0
    return-void
.end method
