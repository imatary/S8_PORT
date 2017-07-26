.class public Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$a;
.super Ljava/lang/Object;
.source "CommentFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;


# direct methods
.method constructor <init>(ILcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$a;->a:I

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$a;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    return-void
.end method
