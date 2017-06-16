.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# static fields
.field static final PATH:Ljava/lang/String; = "telecom/msg/"


# instance fields
.field chatState:I

.field conversationID:J

.field conversationName:Ljava/lang/String;

.field datetime:Ljava/lang/String;

.field eventType:Ljava/lang/String;

.field folder:Ljava/lang/String;

.field handle:J

.field msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field oldFolder:Ljava/lang/String;

.field presenceState:I

.field presenceStatus:Ljava/lang/String;

.field priority:Ljava/lang/String;

.field senderName:Ljava/lang/String;

.field subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field uci:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-direct {p0, p5, p6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-direct {p0, p5, p6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    if-eqz p8, :cond_0

    invoke-static {p8}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    :cond_0
    if-eqz p9, :cond_1

    invoke-static {p9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    :cond_1
    iput-object p10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-direct {p0, p5, p6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    if-eqz p8, :cond_0

    invoke-static {p8}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    :cond_0
    if-eqz p9, :cond_1

    invoke-static {p9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p11, v0

    if-eqz v0, :cond_2

    iput-wide p11, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    :cond_2
    if-eqz p13, :cond_3

    invoke-static/range {p13 .. p13}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    :cond_3
    iput-object p10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-direct {p0, p5, p7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    if-eqz p6, :cond_2

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p7, v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p7, v0, :cond_1

    :cond_0
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    :goto_0
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz p5, :cond_0

    invoke-static {p5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    :cond_0
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v0, p8, v0

    if-eqz v0, :cond_1

    iput-wide p8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    :cond_1
    if-eqz p10, :cond_2

    invoke-static {p10}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    :cond_2
    if-eqz p11, :cond_3

    iput p11, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    :cond_3
    if-eqz p12, :cond_4

    invoke-static {p12}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    :cond_4
    if-eqz p13, :cond_5

    iput p13, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    :cond_5
    return-void
.end method

.method private setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p2, v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public encode()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v11, 0xb

    const/16 v5, 0x100

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    :try_start_0
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string/jumbo v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "\r\n"

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, ""

    const-string/jumbo v7, "MAP-event-report"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get7(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_12

    const-string/jumbo v6, ""

    const-string/jumbo v7, "version"

    const-string/jumbo v8, "1.0"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    const-string/jumbo v6, ""

    const-string/jumbo v7, "event"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, ""

    const-string/jumbo v7, "type"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v7, "ConversationChanged"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v7, "ParticipantPresenceChanged"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v7, "ParticipantChatStateChanged"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_0
    const-string/jumbo v6, ""

    const-string/jumbo v7, "participant_uci"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string/jumbo v6, ""

    const-string/jumbo v7, "folder"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string/jumbo v6, ""

    const-string/jumbo v7, "old_folder"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v6, v7, :cond_5

    :cond_3
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get2()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "BluetoothMapContentObserver"

    const-string/jumbo v7, "It\'s RCS so call getSmsType()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-wrap0(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    :cond_5
    const-string/jumbo v6, ""

    const-string/jumbo v7, "msg_type"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    if-eqz v6, :cond_7

    const-string/jumbo v6, ""

    const-string/jumbo v7, "datetime"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    if-eqz v6, :cond_8

    const-string/jumbo v7, ""

    const-string/jumbo v8, "subject"

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_15

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    if-eqz v6, :cond_9

    const-string/jumbo v6, ""

    const-string/jumbo v7, "sender_name"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    if-eqz v6, :cond_a

    const-string/jumbo v6, ""

    const-string/jumbo v7, "priority"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get7(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I

    move-result v6

    if-le v6, v11, :cond_10

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    if-eqz v6, :cond_b

    const-string/jumbo v6, ""

    const-string/jumbo v7, "conversation_name"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    iget-wide v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v6, :cond_c

    const-string/jumbo v6, ""

    const-string/jumbo v7, "conversation_id"

    iget-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v8, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapConvoHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v7, "ParticipantPresenceChanged"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    if-eqz v6, :cond_d

    const-string/jumbo v6, ""

    const-string/jumbo v7, "presence_availability"

    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    if-eqz v6, :cond_f

    const-string/jumbo v6, ""

    const-string/jumbo v7, "presence_status"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v5, :cond_e

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :cond_e
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v6, "ParticipantPresenceChanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    if-eqz v5, :cond_10

    const-string/jumbo v5, ""

    const-string/jumbo v6, "chat_state"

    iget v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    const-string/jumbo v5, ""

    const-string/jumbo v6, "event"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "MAP-event-report"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_11
    :goto_3
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    return-object v5

    :cond_12
    :try_start_1
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get7(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I

    move-result v6

    if-ne v6, v11, :cond_13

    const-string/jumbo v6, ""

    const-string/jumbo v7, "version"

    const-string/jumbo v8, "1.1"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get0()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "BluetoothMapContentObserver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_13
    :try_start_2
    const-string/jumbo v6, ""

    const-string/jumbo v7, "version"

    const-string/jumbo v8, "1.2"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get0()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "BluetoothMapContentObserver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_14
    :try_start_3
    const-string/jumbo v6, ""

    const-string/jumbo v7, "handle"

    iget-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v8, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get0()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "BluetoothMapContentObserver"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_15
    move v6, v5

    goto/16 :goto_2
.end method
