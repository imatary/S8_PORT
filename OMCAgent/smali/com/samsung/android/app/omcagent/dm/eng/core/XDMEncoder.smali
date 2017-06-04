.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;
.super Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;
.source "XDMEncoder.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;


# instance fields
.field out:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxmlEncoder;-><init>()V

    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v1, "XDMEncoder init"

    invoke-virtual {v0, v1}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->out:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private _ADD_C(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncAddContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _ADD_E(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    invoke-direct {p0, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_C(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    return-void
.end method

.method private _END_E()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncEndElement()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _START_E(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncStartElement(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xdmEncGetBufferSize(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncGetBufferSize()I

    move-result v0

    return v0
.end method


# virtual methods
.method public _ADD_BE(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncStartElement(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x5

    :cond_0
    return v0
.end method

.method public xdmEncAddAdd(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->is_noresp:I

    if-lez v1, :cond_3

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddAlert(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;)I
    .locals 3

    const/4 v0, 0x6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->cmdid:I

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x3c

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->is_noresp:I

    if-lez v1, :cond_6

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_6
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddCopy(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->is_noresp:I

    if-lez v1, :cond_3

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCopy;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I
    .locals 3

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddDelete(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->is_noresp:I

    if-lez v1, :cond_3

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_3
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->is_archive:I

    if-lez v1, :cond_4

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_4
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->is_sftdel:I

    if-lez v1, :cond_5

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddElelist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;I)I
    .locals 3

    move-object v0, p1

    if-nez p1, :cond_0

    const/4 v2, 0x6

    :goto_0
    return v2

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    goto :goto_1
.end method

.method public xdmEncAddExec(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x3c

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_3
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->is_noresp:I

    if-lez v1, :cond_4

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserExec;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddGet(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x6

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->cmdid:I

    if-lez v3, :cond_2

    const/16 v3, 0xb

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->cmdid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->is_noresp:I

    if-lez v3, :cond_4

    const/16 v3, 0x1d

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_4
    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->lang:I

    if-lez v3, :cond_5

    const/16 v3, 0x15

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->lang:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_5
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserGet;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;)I

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_0

    :cond_8
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    goto :goto_1
.end method

.method public xdmEncAddItem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/16 v6, 0xf

    const/4 v2, 0x5

    if-nez p1, :cond_1

    const/4 v1, 0x6

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    iget v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    if-nez v4, :cond_6

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncPcdataGetString(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    move v1, v3

    goto :goto_0

    :cond_6
    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    iget v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    if-ne v4, v7, :cond_8

    invoke-direct {p0, v6}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    :try_start_0
    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    iget-object v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->data:[C

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    iget v5, v5, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->size:I

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncAddOpaque([CI)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_7

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_1

    :cond_8
    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    iget v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    invoke-direct {p0, v6}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncAddSwitchpage(I)Z

    move-result v4

    if-nez v4, :cond_9

    move v1, v2

    goto/16 :goto_0

    :cond_9
    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;->data:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;

    iget-object v4, v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMetinfAnchor(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncAddSwitchpage(I)Z

    move-result v4

    if-nez v4, :cond_a

    move v1, v2

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_1
.end method

.method public xdmEncAddItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)I
    .locals 3

    move-object v0, p1

    if-nez p1, :cond_1

    const/4 v2, 0x6

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    goto :goto_1
.end method

.method public xdmEncAddMap(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x6

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->cmdid:I

    if-lez v3, :cond_2

    const/16 v3, 0xb

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->cmdid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->m_szSource:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMapItem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;)I

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_0

    :cond_8
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    goto :goto_1
.end method

.method public xdmEncAddMapItem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;)I
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;->m_szSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMapItem;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I
    .locals 6

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncAddSwitchpage(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_3
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x13

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_4
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_5
    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->size:I

    if-lez v3, :cond_6

    const/16 v3, 0x12

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->size:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_6
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v3, 0x14

    iget-object v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_7
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x10

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_8
    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->maxmsgsize:I

    if-lez v3, :cond_9

    const/16 v3, 0xc

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->maxmsgsize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_9
    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->maxobjsize:I

    if-lez v3, :cond_a

    const/16 v3, 0x15

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->maxobjsize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_a
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    if-eqz v3, :cond_b

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    iget-object v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    iget-object v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->anchor:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMetinfAnchor(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMetinfEmi(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->mem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;

    if-eqz v3, :cond_d

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;->mem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMetinfMem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncAddSwitchpage(I)Z

    move-result v3

    if-nez v3, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    move v0, v2

    goto/16 :goto_0
.end method

.method public xdmEncAddMetinfAnchor(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;)I
    .locals 2

    const/4 v0, 0x6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xa

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xf

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddMetinfEmi(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddMetinfMem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;)I
    .locals 2

    const/4 v0, 0x6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->free:I

    if-gtz v1, :cond_2

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->freeid:I

    if-gtz v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->free:I

    if-ltz v0, :cond_3

    const/16 v0, 0x9

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->free:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_3
    iget v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->freeid:I

    if-ltz v0, :cond_4

    const/16 v0, 0x8

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->freeid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x11

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddPut(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;)I
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "xdmEncAddPut"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v3, 0x6

    :goto_0
    return v3

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->cmdid:I

    if-lez v3, :cond_1

    const/16 v3, 0xb

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->cmdid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_1
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v2

    if-eqz v2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->is_noresp:I

    if-lez v3, :cond_3

    const/16 v3, 0x1d

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_3
    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->lang:I

    if-lez v3, :cond_4

    const/16 v3, 0x15

    iget v4, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->lang:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_4
    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPut;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v2

    if-eqz v2, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItem(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;)I

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    move v3, v2

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItem(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;->xdmListGetItemPtr(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    move-result-object v0

    goto :goto_1
.end method

.method public xdmEncAddReplace(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->is_noresp:I

    if-lez v1, :cond_3

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddResults(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x2f

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_6
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x28

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_7
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddSource(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddSourceWithLocname(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    const/16 v0, 0x16

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddStatus(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;)I
    .locals 4

    const/4 v0, 0x6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xdmEncAddStatus cmd.cmdid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cmdid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xdmEncAddStatus cmd.msgref = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xdmEncAddStatus cmd.cmd = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xdmEncAddStatus cmd.data = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cmdid:I

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x1c

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->targetref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->targetref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddElelist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;I)I

    :cond_6
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->sourceref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->sourceref:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddElelist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;I)I

    :cond_7
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->chal:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    :cond_9
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_a
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserStatus;->itemlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddItemlist(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public xdmEncAddSyncHeader(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;)I
    .locals 3

    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x31

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x32

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x25

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->msgid:I

    if-lez v1, :cond_3

    const/16 v1, 0x1b

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->msgid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x21

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_4
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->is_noresp:I

    if-lez v1, :cond_5

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szLocname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    :cond_8
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_6

    :cond_a
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_6

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0

    :cond_c
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;->m_szLocname:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddSourceWithLocname(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0
.end method

.method public xdmEncAddTarget(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncAddTargetparent(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncEndAdd()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndAtomic()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndDelete()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndMap()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndReplace()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndSync()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndSyncbody(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_END_E()I

    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncEndSyncml()I
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncEndElement()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncEndDocument()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncInit(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncInit(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method

.method public xdmEncPcdataGetString(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string v0, ""

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->type:I

    if-nez v2, :cond_0

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public xdmEncStartAdd(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->is_noresp:I

    if-lez v1, :cond_3

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAdd;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncStartAtomic(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->cmdid:I

    if-ltz v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->is_noresp:I

    if-ltz v1, :cond_3

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncStartDelete(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->is_noresp:I

    if-lez v1, :cond_3

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_3
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->is_archive:I

    if-lez v1, :cond_4

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_4
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->is_sftdel:I

    if-lez v1, :cond_5

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserDelete;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncStartMap(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->cmdid:I

    if-ltz v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->m_szSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMap;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncStartReplace(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->is_noresp:I

    if-lez v1, :cond_3

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserReplace;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncStartSync(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;)I
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->cmdid:I

    if-lez v1, :cond_2

    const/16 v1, 0xb

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->cred:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddCred(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserCred;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-boolean v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->is_noresp:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_4
    iget-boolean v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->is_noresults:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_BE(I)I

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->meta:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddMeta(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserMeta;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddTarget(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->m_szSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->m_szSource:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmEncAddSource(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    iget v1, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->numofchanges:I

    if-ltz v1, :cond_9

    const/16 v1, 0x33

    iget v2, p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSync;->numofchanges:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_ADD_E(ILjava/lang/String;)V

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xdmEncStartSyncbody()I
    .locals 1

    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    const/4 v0, 0x0

    return v0
.end method

.method public xdmEncStartSyncml(IILjava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->xdmWbxEncStartDocument(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;->_START_E(I)I

    const/4 v0, 0x0

    goto :goto_0
.end method
