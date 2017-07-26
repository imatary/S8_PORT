.class public Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachImageResponse"
.end annotation


# instance fields
.field public animatedCnt:I

.field public colorSpace:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public fileSize:I

.field public height:I

.field public index:I

.field public path:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    return-void
.end method
