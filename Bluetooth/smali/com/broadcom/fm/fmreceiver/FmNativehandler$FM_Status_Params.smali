.class Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;
.super Ljava/lang/Object;
.source "FmNativehandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/fmreceiver/FmNativehandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FM_Status_Params"
.end annotation


# instance fields
.field private mStFreq:I

.field private mStIsMute:Z

.field private mStRadioIsOn:Z

.field private mStRdsProgramService:Ljava/lang/String;

.field private mStRdsProgramType:I

.field private mStRdsProgramTypeName:Ljava/lang/String;

.field private mStRdsRadioText:Ljava/lang/String;

.field private mStRssi:I

.field private mStSnr:I


# direct methods
.method static synthetic -get0(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)I
    .locals 1

    iget v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStFreq:I

    return v0
.end method

.method static synthetic -get1(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStIsMute:Z

    return v0
.end method

.method static synthetic -get2(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRadioIsOn:Z

    return v0
.end method

.method static synthetic -get3(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRdsProgramService:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)I
    .locals 1

    iget v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRdsProgramType:I

    return v0
.end method

.method static synthetic -get5(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRdsProgramTypeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRdsRadioText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)I
    .locals 1

    iget v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRssi:I

    return v0
.end method

.method static synthetic -get8(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)I
    .locals 1

    iget v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStSnr:I

    return v0
.end method

.method public constructor <init>(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStFreq:I

    iput p2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRssi:I

    iput p3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStSnr:I

    iput-boolean p4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRadioIsOn:Z

    iput p5, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRdsProgramType:I

    iput-object p6, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRdsProgramService:Ljava/lang/String;

    iput-object p7, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRdsRadioText:Ljava/lang/String;

    iput-object p8, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStRdsProgramTypeName:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->mStIsMute:Z

    return-void
.end method
