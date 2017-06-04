.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;
.super Ljava/lang/Object;
.source "XDMWorkspace.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XUICInterface;


# instance fields
.field public IsSequenceProcessing:Z

.field public appId:I

.field public atomic:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAtomic;

.field public atomicFlag:Z

.field public atomicList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

.field public atomicStep:Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface$XDMAtomicStep;

.field public authCount:I

.field public authState:I

.field public buf:Ljava/io/ByteArrayOutputStream;

.field public bufsize:I

.field public cmdID:I

.field public credType:I

.field public dataBuffered:Z

.field public dataTotalSize:I

.field public dmState:Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface$XDMSyncMLState;

.field public e:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;

.field public endOfMsg:Z

.field public inAtomicCmd:Z

.field public inSequenceCmd:Z

.field public isFinal:Z

.field public list:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

.field public m_szClientPW:Ljava/lang/String;

.field public m_szHostname:Ljava/lang/String;

.field public m_szMsgRef:Ljava/lang/String;

.field public m_szProtocol:Ljava/lang/String;

.field public m_szServerID:Ljava/lang/String;

.field public m_szServerPW:Ljava/lang/String;

.field public m_szSessionID:Ljava/lang/String;

.field public m_szSourceURI:Ljava/lang/String;

.field public m_szStatusReturnCode:Ljava/lang/String;

.field public m_szTargetURI:Ljava/lang/String;

.field public m_szUserName:Ljava/lang/String;

.field public maxMsgSize:I

.field public maxObjSize:I

.field public msgID:I

.field public nTNDSFlag:Z

.field public nextMsg:Z

.field public nextNonce:[B

.field public numAction:I

.field public om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

.field public p:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParser;

.field public port:I

.field public prevBufPos:I

.field public procState:Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface$XDMProcessingState;

.field public procStep:I

.field public recvHmacData:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMHmacData;

.field public results:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;

.field public resultsList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

.field public sendChal:Z

.field public sendPos:I

.field public sendRemain:Z

.field public sequence:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSequence;

.field public sequenceList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

.field public serverAuthState:I

.field public serverCredType:I

.field public serverMaxMsgSize:I

.field public serverMaxObjSize:I

.field public serverNextNonce:[B

.field public sessionAbort:I

.field public sourceRefList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

.field public state:Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface$XDMSyncMLState;

.field public statusList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

.field public syncHeader:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;

.field public targetRefList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

.field public tempResults:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;

.field public tmpItem:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserItem;

.field public uicAlert:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserAlert;

.field public uicData:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

.field public uicFlag:Lcom/samsung/android/app/omcagent/dm/interfaces/XUICInterface$XUICFlag;

.field public uicOption:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;

.field public userData:Ljava/lang/Object;

.field public ws:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szUserName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szServerID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szServerPW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szClientPW:Ljava/lang/String;

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->nextNonce:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->serverNextNonce:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szProtocol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szSourceURI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szSessionID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->m_szMsgRef:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->uicData:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    iput v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->authState:I

    iput v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->serverAuthState:I

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->credType:I

    iput v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->serverCredType:I

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->sendChal:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->atomicList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->sequenceList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->e:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMEncoder;

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->targetRefList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->sourceRefList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->list:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->statusList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->resultsList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->results:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserResults;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1c00

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->bufsize:I

    const/16 v0, 0x1400

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->maxMsgSize:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->maxObjSize:I

    const/16 v0, 0x1400

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->serverMaxMsgSize:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->endOfMsg:Z

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->syncHeader:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMParserSyncheader;

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->sessionAbort:I

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_INIT:Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->dmState:Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface$XDMSyncMLState;

    iput v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->cmdID:I

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->appId:I

    iput v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->msgID:I

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->authCount:I

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->dataBuffered:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->IsSequenceProcessing:Z

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMHmacData;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMHmacData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->recvHmacData:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMHmacData;

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/interfaces/XUICInterface$XUICFlag;->XUIC_NONE:Lcom/samsung/android/app/omcagent/dm/interfaces/XUICInterface$XUICFlag;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->uicFlag:Lcom/samsung/android/app/omcagent/dm/interfaces/XUICInterface$XUICFlag;

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->uicData:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMList;

    return-void
.end method


# virtual methods
.method public xdmFreeWorkSpace()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->targetRefList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->targetRefList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->sourceRefList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->sourceRefList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->list:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->list:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->statusList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->statusList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->resultsList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->resultsList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->atomicList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWorkspace;->atomicList:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    :cond_5
    return-void
.end method
