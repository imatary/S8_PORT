.class public final Ldalvik/system/profiler/BinaryHprofWriter;
.super Ljava/lang/Object;
.source "BinaryHprofWriter.java"


# static fields
.field private static final synthetic -dalvik-system-profiler-HprofData$ThreadEventTypeSwitchesValues:[I


# instance fields
.field private final classNameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ldalvik/system/profiler/HprofData;

.field private nextClassId:I

.field private nextStackFrameId:I

.field private nextStringId:I

.field private final out:Ljava/io/DataOutputStream;

.field private final stackFrameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stringToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getdalvik-system-profiler-HprofData$ThreadEventTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Ldalvik/system/profiler/BinaryHprofWriter;->-dalvik-system-profiler-HprofData$ThreadEventTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ldalvik/system/profiler/BinaryHprofWriter;->-dalvik-system-profiler-HprofData$ThreadEventTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ldalvik/system/profiler/HprofData$ThreadEventType;->values()[Ldalvik/system/profiler/HprofData$ThreadEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Ldalvik/system/profiler/BinaryHprofWriter;->-dalvik-system-profiler-HprofData$ThreadEventTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    iput v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    iput-object p1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    return-void
.end method

.method private write()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getStartMillis()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeHeader(J)V

    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getFlags()I

    move-result v6

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v7}, Ldalvik/system/profiler/HprofData;->getDepth()I

    move-result v7

    invoke-direct {p0, v6, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeControlSettings(II)V

    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getThreadHistory()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEvent;

    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    iget-object v7, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    throw v6

    :cond_0
    :try_start_1
    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->data:Ldalvik/system/profiler/HprofData;

    invoke-virtual {v6}, Ldalvik/system/profiler/HprofData;->getSamples()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldalvik/system/profiler/HprofData$Sample;

    iget v6, v2, Ldalvik/system/profiler/HprofData$Sample;->count:I

    add-int/2addr v5, v6

    iget-object v6, v2, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    invoke-direct {p0, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeCpuSamples(ILjava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public static write(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ldalvik/system/profiler/BinaryHprofWriter;

    invoke-direct {v0, p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;-><init>(Ldalvik/system/profiler/HprofData;Ljava/io/OutputStream;)V

    invoke-direct {v0}, Ldalvik/system/profiler/BinaryHprofWriter;->write()V

    return-void
.end method

.method private writeControlSettings(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x7fff

    if-le p2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "depth too large for binary hprof: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v1, v1, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method private writeCpuSamples(ILjava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ldalvik/system/profiler/HprofData$Sample;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/profiler/BinaryHprof$Tag;

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/profiler/HprofData$Sample;

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v4, v0, Ldalvik/system/profiler/HprofData$Sample;->count:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget-object v4, v0, Ldalvik/system/profiler/HprofData$Sample;->stackTrace:Ldalvik/system/profiler/HprofData$StackTrace;

    iget v4, v4, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeHeader(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ldalvik/system/profiler/BinaryHprof;->MAGIC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1.0.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method private writeId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeLoadClass(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    :cond_0
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextClassId:I

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v4, v4, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    return v1
.end method

.method private writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Ldalvik/system/profiler/BinaryHprof$Tag;->checkSize(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget-byte v2, p1, Ldalvik/system/profiler/BinaryHprof$Tag;->tag:B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeStackFrame(Ljava/lang/StackTraceElement;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    :cond_0
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStackFrameId:I

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeLoadClass(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v6, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v6, v6, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v5, v7, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    invoke-direct {p0, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v7}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    return v1
.end method

.method private writeStackTrace(Ldalvik/system/profiler/HprofData$StackTrace;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    array-length v0, v5

    new-array v3, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v5, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStackFrame(Ljava/lang/StackTraceElement;)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/profiler/BinaryHprof$Tag;

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0xc

    invoke-direct {p0, v5, v4, v6}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v6, p1, Ldalvik/system/profiler/HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v6, p1, Ldalvik/system/profiler/HprofData$StackTrace;->threadId:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget v2, v3, v4

    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeStartThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v4, v4, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v4, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v3, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->objectId:I

    invoke-direct {p0, v3}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0, v2}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v0}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    invoke-direct {p0, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeId(I)V

    return-void
.end method

.method private writeStopThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    sget-object v1, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    iget v1, v1, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v0, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeString(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    :cond_1
    iget v1, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->nextStringId:I

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->stringToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/profiler/BinaryHprof$Tag;

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/profiler/BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/profiler/BinaryHprof$Tag;II)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Ldalvik/system/profiler/BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    array-length v4, v0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    return v1
.end method

.method private writeThreadEvent(Ldalvik/system/profiler/HprofData$ThreadEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/profiler/BinaryHprofWriter;->-getdalvik-system-profiler-HprofData$ThreadEventTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p1, Ldalvik/system/profiler/HprofData$ThreadEvent;->type:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStartThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Ldalvik/system/profiler/BinaryHprofWriter;->writeStopThread(Ldalvik/system/profiler/HprofData$ThreadEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
