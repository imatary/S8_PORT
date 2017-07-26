.class public Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Extension;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "CommentRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extension"
.end annotation


# instance fields
.field public final cafeMemberLevel:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iput p1, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Extension;->cafeMemberLevel:I

    return-void
.end method
