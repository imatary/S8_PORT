.class public Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse$ReturnData;
    }
.end annotation


# instance fields
.field public rtn_cd:I

.field public rtn_data:Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse$ReturnData;

.field public rtn_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    const-string/jumbo v0, "success"

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse;->rtn_msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
