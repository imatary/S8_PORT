.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;
.super Ljava/lang/Object;
.source "XDMList.java"


# instance fields
.field public item:Ljava/lang/Object;

.field public next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmListAppend(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;Ljava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;
    .locals 2

    const/4 v0, 0x0

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;-><init>()V

    iput-object p2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->item:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-nez p0, :cond_0

    move-object p0, v0

    move-object p1, p0

    :goto_0
    return-object p0

    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    :goto_1
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-nez v1, :cond_2

    :cond_1
    iput-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-object p1, v0

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    goto :goto_1
.end method

.method public static xdmListAppendStrText(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListVerifyTextSize(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;I)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    move-result-object p0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    return-object p0
.end method

.method public static xdmListAppendText(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListVerifyTextSize(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;I)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    move-result-object p0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    return-object p0
.end method

.method public static xdmListCopyStrText(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListVerifyTextSize(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;I)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    move-result-object p0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    return-object p0
.end method

.method public static xdmListCreateText(ILjava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iget v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iput p0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    goto :goto_0
.end method

.method public static xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->item:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    goto :goto_0
.end method

.method public static xdmListVerifyTextSize(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;I)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;
    .locals 2

    iget v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public xdmListAppend2(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;Ljava/lang/Object;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;-><init>()V

    iput-object p2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->item:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v1, p1

    :goto_1
    iget-object v2, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-nez v2, :cond_1

    iput-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-object v0, p1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    goto :goto_1
.end method
