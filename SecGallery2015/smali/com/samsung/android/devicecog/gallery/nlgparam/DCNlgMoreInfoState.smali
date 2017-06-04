.class public Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;
.super Ljava/lang/Object;
.source "DCNlgMoreInfoState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;
    }
.end annotation


# instance fields
.field private final mIsSuccess:Z

.field private final mOption:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;


# direct methods
.method public constructor <init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mOption:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    iput-boolean p2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mIsSuccess:Z

    return-void
.end method


# virtual methods
.method public addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$1;->$SwitchMap$com$samsung$android$devicecog$gallery$nlgparam$DCNlgMoreInfoState$MoreInfoOption:[I

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mOption:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v1, "SelectOrderType"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "LocationName"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v2, "Apply"

    const-string/jumbo v3, "Available"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mIsSuccess:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "yes"

    :goto_1
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "no"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v2, "Location"

    const-string/jumbo v3, "Exist"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mIsSuccess:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "yes"

    :goto_2
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "no"

    goto :goto_2

    :pswitch_4
    const-string/jumbo v1, "CategoryRemove"

    const-string/jumbo v2, "Available"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :pswitch_5
    const-string/jumbo v2, "Category"

    const-string/jumbo v3, "Exist"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mIsSuccess:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "yes"

    :goto_3
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "no"

    goto :goto_3

    :pswitch_6
    const-string/jumbo v2, "Tag"

    const-string/jumbo v3, "Exist"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mIsSuccess:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "yes"

    :goto_4
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "no"

    goto :goto_4

    :pswitch_7
    const-string/jumbo v2, "TagRemove"

    const-string/jumbo v3, "Available"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mIsSuccess:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "yes"

    :goto_5
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "no"

    goto :goto_5

    :pswitch_8
    const-string/jumbo v2, "FileNameEdit"

    const-string/jumbo v3, "Available"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mIsSuccess:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "yes"

    :goto_6
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "no"

    goto :goto_6

    :pswitch_9
    const-string/jumbo v2, "URL"

    const-string/jumbo v3, "Exist"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mIsSuccess:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "yes"

    :goto_7
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "no"

    goto :goto_7

    :pswitch_a
    const-string/jumbo v2, "LocationEdit"

    const-string/jumbo v3, "Available"

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->mIsSuccess:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "yes"

    :goto_8
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "no"

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
