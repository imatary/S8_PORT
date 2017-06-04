.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;
.super Ljava/lang/Object;
.source "DCNlgStorySharingState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;
    }
.end annotation


# instance fields
.field private final mIsDoubleChecked:Z

.field private final mMode:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->mIsDoubleChecked:Z

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->mMode:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    return-void
.end method

.method private addRequestInfoParam(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 3

    sget-object v0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$1;->$SwitchMap$com$samsung$android$devicecog$gallery$nlgparam$DCNlgStorySharingState$StorySharingMenu:[I

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->mMode:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    const-string/jumbo v1, "NotificationOn"

    const-string/jumbo v2, "AlreadySet"

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->mIsDoubleChecked:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "yes"

    :goto_1
    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "no"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "NotificationOff"

    const-string/jumbo v2, "AlreadySet"

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->mIsDoubleChecked:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "yes"

    :goto_2
    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "no"

    goto :goto_2

    :pswitch_2
    const-string/jumbo v1, "WiFiOnlyOn"

    const-string/jumbo v2, "AlreadySet"

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->mIsDoubleChecked:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "yes"

    :goto_3
    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "no"

    goto :goto_3

    :pswitch_3
    const-string/jumbo v1, "WiFiOnlyOff"

    const-string/jumbo v2, "AlreadySet"

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->mIsDoubleChecked:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "yes"

    :goto_4
    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "no"

    goto :goto_4

    :pswitch_4
    const-string/jumbo v1, "StorySharingOn"

    const-string/jumbo v2, "AlreadySet"

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->mIsDoubleChecked:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "yes"

    :goto_5
    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "no"

    goto :goto_5

    :pswitch_5
    const-string/jumbo v1, "StorySharingOff"

    const-string/jumbo v2, "AlreadySet"

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->mIsDoubleChecked:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "yes"

    :goto_6
    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "no"

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->addRequestInfoParam(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    return-object v0
.end method
