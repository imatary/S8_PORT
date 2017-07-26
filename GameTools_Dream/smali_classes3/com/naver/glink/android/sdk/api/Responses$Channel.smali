.class public Lcom/naver/glink/android/sdk/api/Responses$Channel;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation


# static fields
.field public static final INVALID_CHANNEL_ID:I = -0x1


# instance fields
.field public channelId:I

.field public langCode:Ljava/lang/String;

.field public language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->channelId:I

    return-void
.end method


# virtual methods
.method public getLangCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->langCode:Ljava/lang/String;

    return-object v0
.end method
