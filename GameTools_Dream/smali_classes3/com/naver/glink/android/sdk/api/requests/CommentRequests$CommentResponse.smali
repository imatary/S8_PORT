.class public Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "CommentRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/CommentRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/naver/glink/android/sdk/api/Response;"
    }
.end annotation


# instance fields
.field public code:I

.field public country:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentResponse;->message:Ljava/lang/String;

    return-object v0
.end method
