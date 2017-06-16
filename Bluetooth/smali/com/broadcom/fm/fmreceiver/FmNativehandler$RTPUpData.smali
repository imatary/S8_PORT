.class Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;
.super Ljava/lang/Object;
.source "FmNativehandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/fmreceiver/FmNativehandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RTPUpData"
.end annotation


# instance fields
.field public mAdditionalLen1:I

.field public mAdditionalLen2:I

.field public mContentType1:I

.field public mContentType2:I

.field public mStartPos1:I

.field public mStartPos2:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mContentType1:I

    iput p2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mStartPos1:I

    iput p3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mAdditionalLen1:I

    iput p4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mContentType2:I

    iput p5, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mStartPos2:I

    iput p6, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mAdditionalLen2:I

    return-void
.end method
