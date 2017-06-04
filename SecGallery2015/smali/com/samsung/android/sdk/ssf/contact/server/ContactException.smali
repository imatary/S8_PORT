.class public Lcom/samsung/android/sdk/ssf/contact/server/ContactException;
.super Ljava/io/IOException;
.source "ContactException.java"


# instance fields
.field private detailMessage:Ljava/lang/StringBuilder;

.field private result:Lcom/samsung/android/sdk/ssf/SsfResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->detailMessage:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iput p1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->setInternalMessage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->detailMessage:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->getStatusCodeMessage(Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Server error Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->getServerErrorCode()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Server error Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->setInternalMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getStatusCodeMessage(Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;
    .locals 1

    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "IO Error"

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "Network error"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "Request is Cancelled"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "Network Parse Error"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "Network Timedout"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "No Network Connection"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "Internal Server Error"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "Bad Access Token"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "Not allowed in Main Thread"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2716 -> :sswitch_1
        0x2af8 -> :sswitch_0
        0x2af9 -> :sswitch_3
        0x2afa -> :sswitch_4
        0x2afb -> :sswitch_2
        0x2ee0 -> :sswitch_5
        0x7531 -> :sswitch_7
        0x7532 -> :sswitch_6
    .end sparse-switch
.end method

.method private setInternalMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->detailMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->detailMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerErrorCode()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-wide v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    return-wide v0
.end method

.method public getServerErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->result:Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    return-object v0
.end method
