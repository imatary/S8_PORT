.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$3;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->initGridItemListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->doAddImage()V

    return-void
.end method
