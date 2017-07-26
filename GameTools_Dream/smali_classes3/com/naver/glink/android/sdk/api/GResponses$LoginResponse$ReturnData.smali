.class public Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse$ReturnData;
.super Ljava/lang/Object;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReturnData"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public id_no:Ljava/lang/String;

.field public login_status:I

.field public memberLevel:I

.field public mode:Ljava/lang/String;

.field public sns_cd:Ljava/lang/String;

.field public sns_id:Ljava/lang/String;

.field public sns_nick:Ljava/lang/String;

.field public sns_token:Ljava/lang/String;

.field public sns_token_secret:Ljava/lang/String;

.field public stat_cd:Ljava/lang/String;

.field public svc_cd:Ljava/lang/String;

.field public svc_url:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public token_secret:Ljava/lang/String;

.field public token_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
