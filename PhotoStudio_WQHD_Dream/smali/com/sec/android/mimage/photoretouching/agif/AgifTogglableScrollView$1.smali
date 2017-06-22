.class Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView$1;
.super Ljava/lang/Object;
.source "AgifTogglableScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLine(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

.field final synthetic val$line:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView$1;->val$line:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView$1;->val$line:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView$1;->val$line:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method
