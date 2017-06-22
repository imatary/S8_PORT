.class public Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
.super Ljava/lang/Object;
.source "SpenNoteDoc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;
    }
.end annotation


# static fields
.field public static final MODE_READ_ONLY:I = 0x0

.field public static final MODE_WRITABLE:I = 0x1

.field private static final NATIVE_COMMAND_APPEND_PAGES:I = 0x1

.field private static final NATIVE_COMMAND_DUMMY:I = 0x0

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field private static final SCHEME_TEMPLATE_NAME:Ljava/lang/String; = "template_name://"

.field private static sIsFeatureChecked:Z

.field private static sIsLogEnabled:Z

.field private static sSdkVersionCode:I

.field private static sWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final is32Bit:Z

.field private mContext:Landroid/content/Context;

.field private mHandle:I

.field private mHandle2:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sput-boolean v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsLogEnabled:Z

    sput-boolean v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsFeatureChecked:Z

    sput v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v1

    const/16 v4, 0x20

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    const-string v1, "SpenNoteDoc()"

    invoke-static {v6, v1, v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    if-le p2, p3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;III)I

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;III)I

    move-result v0

    goto :goto_1

    :sswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :sswitch_1
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenNoteDoc("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is already closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    const-string v1, "SpenNoteDoc()"

    const/4 v2, 0x2

    invoke-static {v4, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;III)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :sswitch_1
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenNoteDoc("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is already closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/InputStream;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;,
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    const-string v1, "SpenNoteDoc()"

    const/4 v2, 0x3

    invoke-static {v4, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;Ljava/io/ByteArrayInputStream;II)I

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    instance-of v1, p2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;Ljava/io/FileDescriptor;II)I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x7

    const-string v2, "The parameter \'stream\' is unsupported type. This method supports only ByteArrayInputStream and FileInputStream"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v2, "It does not correspond to the NoteDoc file format"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v2, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenNoteDoc("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is already closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;DI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;,
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    const-string v0, "SpenNoteDoc()"

    const/4 v1, 0x5

    invoke-static {v3, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;,
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v6, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    const-string v0, "SpenNoteDoc()"

    const/4 v1, 0x4

    invoke-static {v3, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;,
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    const-string v0, "SpenNoteDoc()"

    const/16 v1, 0x8

    invoke-static {v3, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;,
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    const-string v0, "SpenNoteDoc()"

    const/4 v1, 0x7

    invoke-static {v3, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;,
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v6, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    const-string v0, "SpenNoteDoc()"

    const/4 v1, 0x6

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;,
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    const-string v0, "SpenNoteDoc()"

    const/16 v1, 0x9

    invoke-static {v3, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private native Native_command(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteDoc_appendPage(II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_appendPage(ILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_appendPages(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_appendTemplatePage(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_attachFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native NoteDoc_attachTemplatePage(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native NoteDoc_attachToFile(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_attachToFile(Ljava/lang/String;Z)Z
.end method

.method private native NoteDoc_backupObjectList(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method private native NoteDoc_close(Z)Z
.end method

.method private native NoteDoc_copyPage(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_detachFile(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_detachTemplatePage(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_discard()Z
.end method

.method private native NoteDoc_finalize()V
.end method

.method private native NoteDoc_getAppMajorVersion()I
.end method

.method private native NoteDoc_getAppMinorVersion()I
.end method

.method private native NoteDoc_getAppName()Ljava/lang/String;
.end method

.method private native NoteDoc_getAppPatchName()Ljava/lang/String;
.end method

.method private native NoteDoc_getAttachedFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native NoteDoc_getAttachedFileCount()I
.end method

.method private native NoteDoc_getAuthorInfo()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;
.end method

.method private native NoteDoc_getCoverImagePath()Ljava/lang/String;
.end method

.method private native NoteDoc_getExtraDataByteArray(Ljava/lang/String;)[B
.end method

.method private native NoteDoc_getExtraDataInt(Ljava/lang/String;)I
.end method

.method private native NoteDoc_getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native NoteDoc_getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private native NoteDoc_getGeoTagLatitude()D
.end method

.method private native NoteDoc_getGeoTagLongitude()D
.end method

.method private native NoteDoc_getHeight()I
.end method

.method private native NoteDoc_getId()Ljava/lang/String;
.end method

.method private native NoteDoc_getInternalDirectory()Ljava/lang/String;
.end method

.method private native NoteDoc_getLastEditedPageIndex()I
.end method

.method private native NoteDoc_getOrientation()I
.end method

.method private native NoteDoc_getOrientation2(Ljava/io/ByteArrayInputStream;)I
.end method

.method private native NoteDoc_getOrientation3(Ljava/io/FileDescriptor;)I
.end method

.method private native NoteDoc_getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_getPageCount()I
.end method

.method private native NoteDoc_getPageIdByIndex(I)Ljava/lang/String;
.end method

.method private native NoteDoc_getPageIndexById(Ljava/lang/String;)I
.end method

.method private native NoteDoc_getRotation()I
.end method

.method private native NoteDoc_getTemplatePage(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_getTemplatePageCount()I
.end method

.method private native NoteDoc_getTemplatePageName(I)Ljava/lang/String;
.end method

.method private native NoteDoc_getTemplateUri()Ljava/lang/String;
.end method

.method private native NoteDoc_getWidth()I
.end method

.method private native NoteDoc_hasAttachedFile(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_hasExtraDataByteArray(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_hasExtraDataInt(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_hasExtraDataString(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_hasExtraDataStringArray(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_hasTaggedPage()Z
.end method

.method private native NoteDoc_hasTemplatePage(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_init(Ljava/lang/String;III)I
.end method

.method private native NoteDoc_init(Ljava/lang/String;Ljava/io/ByteArrayInputStream;II)I
.end method

.method private native NoteDoc_init(Ljava/lang/String;Ljava/io/ByteArrayInputStream;Ljava/lang/String;II)I
.end method

.method private native NoteDoc_init(Ljava/lang/String;Ljava/io/FileDescriptor;II)I
.end method

.method private native NoteDoc_init(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;II)I
.end method

.method private native NoteDoc_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I
.end method

.method private native NoteDoc_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I
.end method

.method private native NoteDoc_initWithSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I
.end method

.method private native NoteDoc_initWithSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I
.end method

.method private native NoteDoc_insertPage(III)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_insertPage(IILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_insertPages(Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_insertTemplatePage(ILjava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_isAllPageTextOnly()Z
.end method

.method private native NoteDoc_isChanged()Z
.end method

.method private native NoteDoc_movePageIndex(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Z
.end method

.method private native NoteDoc_removeExtraDataByteArray(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_removeExtraDataInt(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_removeExtraDataString(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_removeExtraDataStringArray(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_removePage(I)Z
.end method

.method private native NoteDoc_requestSave(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_restoreObjectList(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteDoc_revertToTemplatePage(I)Z
.end method

.method private native NoteDoc_reviseObjectList(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native NoteDoc_save(Ljava/io/ByteArrayOutputStream;)Z
.end method

.method private native NoteDoc_save(Ljava/io/ByteArrayOutputStream;Z)Z
.end method

.method private native NoteDoc_save(Ljava/io/FileDescriptor;)Z
.end method

.method private native NoteDoc_save(Ljava/io/FileDescriptor;Z)Z
.end method

.method private native NoteDoc_save(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_save(Ljava/lang/String;Z)Z
.end method

.method private native NoteDoc_setAppName(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_setAppVersion(IILjava/lang/String;)Z
.end method

.method private native NoteDoc_setAuthorInfo(Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;)Z
.end method

.method private native NoteDoc_setCoverImage(Ljava/lang/String;)Z
.end method

.method private native NoteDoc_setExtraDataByteArray(Ljava/lang/String;[BI)Z
.end method

.method private native NoteDoc_setExtraDataInt(Ljava/lang/String;I)Z
.end method

.method private native NoteDoc_setExtraDataString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native NoteDoc_setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z
.end method

.method private native NoteDoc_setGeoTag(DD)Z
.end method

.method private native NoteDoc_setTemplateUri(Ljava/lang/String;)Z
.end method

.method private static insertLog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x1

    const-string v0, "com.samsung.android.sdk.pen"

    :try_start_0
    sget-object v5, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_1

    const-string v5, "SpenSdk"

    const-string v6, "Cannot log. lost context"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v5, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsFeatureChecked:Z

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;

    move-result-object v3

    const-string v5, "TRUE"

    const-string v6, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v6}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsLogEnabled:Z

    const/4 v5, 0x1

    sput-boolean v5, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsFeatureChecked:Z

    :cond_2
    sget-boolean v5, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsLogEnabled:Z

    if-ne v5, v7, :cond_0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "app_id"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "feature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "extra"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "value"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "data"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "com.samsung.android.providers.context"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private static insertLog([Ljava/lang/String;[J)V
    .locals 12

    const/4 v10, 0x1

    const-string v0, "com.samsung.android.sdk.pen"

    :try_start_0
    sget-object v8, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    if-nez v7, :cond_1

    const-string v8, "SpenSdk"

    const-string v9, "Cannot log. lost context"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v8, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsFeatureChecked:Z

    if-nez v8, :cond_2

    invoke-static {v7}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;

    move-result-object v4

    const-string v8, "TRUE"

    const-string v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v4, v9}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sput-boolean v8, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsLogEnabled:Z

    const/4 v8, 0x1

    sput-boolean v8, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsFeatureChecked:Z

    :cond_2
    sget-boolean v8, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsLogEnabled:Z

    if-ne v8, v10, :cond_0

    array-length v8, p0

    new-array v2, v8, [Landroid/content/ContentValues;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    :goto_1
    array-length v8, p0

    if-ge v5, v8, :cond_3

    aget-object v8, p0, v5

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    aput-object v8, v2, v5

    aget-object v8, v2, v5

    const-string v9, "app_id"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v8, v2, v5

    const-string v9, "feature"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v8, v2, v5

    const-string v9, "extra"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v8, v2, v5

    const-string v9, "value"

    aget-wide v10, p1, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "data"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v8, "com.samsung.android.providers.context"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_0

    :catch_1
    move-exception v8

    goto/16 :goto_0

    :catch_2
    move-exception v8

    goto/16 :goto_0
.end method

.method private static isBuildTypeEngMode()Z
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private throwUncheckedException(I)V
    .locals 3

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    return-void
.end method


# virtual methods
.method public appendPage()Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 4

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_appendPage(ILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public appendPage(II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_appendPage(II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public appendPage(ILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_appendPage(ILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public appendPages(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 5

    const/4 v4, 0x1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->Native_command(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_2
    return-object v2
.end method

.method public appendPages(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 4

    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_appendPages(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenNoteDoc"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public appendTemplatePage(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v13, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_appendTemplatePage(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    :goto_0
    return-object v6

    :pswitch_1
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    :pswitch_2
    new-instance v10, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v11, "It does not correspond to the NoteDoc file format"

    invoke-direct {v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    iget-object v11, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v7, v4, [B

    const/4 v11, 0x0

    :try_start_0
    array-length v12, v7

    invoke-virtual {v5, v7, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    array-length v12, v7

    if-eq v11, v12, :cond_2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    new-instance v10, Ljava/io/IOException;

    const-string v11, "Failed to is.read()"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v2

    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v8, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getWidth()I

    move-result v12

    invoke-direct {v8, v11, v1, v12, v13}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;Ljava/io/InputStream;II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getOrientation()I

    move-result v11

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getOrientation()I

    move-result v12

    if-eq v11, v12, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    const/4 v11, 0x7

    const-string v12, "The orientation of the template is not matched with this NoteDoc."

    invoke-static {v11, v12}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {v8, v13}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v11

    invoke-static {v11}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    move-object v6, v10

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_appendPage(II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v11

    invoke-static {v11}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    move-object v6, v10

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6, v9}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->copy(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    invoke-virtual {v6, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setTemplateUri(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->clearChangedFlagOfLayer()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public attachFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_attachFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public attachTemplatePage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;,
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_attachTemplatePage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenNoteDoc"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v2, "It does not correspond to the NoteDoc file format"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v2, "E_INVALID_PASSWORD : template page is locked."

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xd -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public attachToFile(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_attachToFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void

    :sswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :sswitch_1
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenNoteDoc("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is already closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public attachToFile(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_attachToFile(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenNoteDoc"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpenNoteDoc("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is already closed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public backupObjectList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_backupObjectList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    if-ne v0, v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_close(Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    iput v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-wide v4, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public close(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    if-ne v0, v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_close(Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    iput v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-wide v4, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public copyPage(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 4

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_copyPage(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenNoteDoc"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public detachFile(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_detachFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public detachTemplatePage(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_detachTemplatePage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenNoteDoc"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public discard()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    if-ne v0, v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_discard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->osType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    iput v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-wide v4, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    instance-of v1, p1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget v2, p1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget-wide v4, p1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->Native_command(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    goto :goto_0
.end method

.method public getAppMajorVersion()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAppMajorVersion()I

    move-result v0

    return v0
.end method

.method public getAppMinorVersion()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAppMinorVersion()I

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPatchName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAppPatchName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttachedFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAttachedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getAttachedFileCount()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAttachedFileCount()I

    move-result v0

    return v0
.end method

.method public getAuthorInfo()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAuthorInfo()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCoverImagePath()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getCoverImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getExtraDataByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getExtraDataInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeoTagLatitude()D
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getGeoTagLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoTagLongitude()D
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getGeoTagLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getHeight()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalDirectory()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getInternalDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastEditedPageIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getLastEditedPageIndex()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return v0
.end method

.method public getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getPageCount()I
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    if-eqz v0, :cond_0

    const-string v0, "Model_SpenNoteDoc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getPageCount()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Model_SpenNoteDoc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPageIdByIndex(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getPageIdByIndex(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getPageIndexById(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getPageIndexById(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return v0
.end method

.method public getRotation()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getRotation()I

    move-result v0

    return v0
.end method

.method public getTemplatePage(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getTemplatePage(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenNoteDoc"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTemplatePageCount()I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getTemplatePageCount()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenNoteDoc"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTemplatePageName(I)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getTemplatePageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenNoteDoc"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTemplateUri()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getTemplateUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getWidth()I

    move-result v0

    return v0
.end method

.method public hasAttachedFile(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasAttachedFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataByteArray(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasExtraDataByteArray(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataInt(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasExtraDataInt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataString(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasExtraDataString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataStringArray(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasExtraDataStringArray(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasTaggedPage()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasTaggedPage()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->is32Bit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle2:J

    long-to-int v0, v0

    goto :goto_0
.end method

.method public insertPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 4

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_insertPage(IILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public insertPage(III)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_insertPage(III)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public insertPage(IILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_insertPage(IILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public insertPages(Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 4

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_insertPages(Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenNoteDoc"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertTemplatePage(ILjava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_insertTemplatePage(ILjava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    :goto_0
    return-object v6

    :sswitch_0
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    :sswitch_1
    new-instance v10, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v11, "It does not correspond to the NoteDoc file format"

    invoke-direct {v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_2
    new-instance v10, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SpenNoteDoc("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") is already closed."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    iget-object v10, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v7, v4, [B

    const/4 v10, 0x0

    :try_start_0
    array-length v11, v7

    invoke-virtual {v5, v7, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    array-length v11, v7

    if-eq v10, v11, :cond_2

    new-instance v10, Ljava/io/IOException;

    const-string v11, "Failed to is.read()"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v8, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getWidth()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v8, v10, v1, v11, v12}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;Ljava/io/InputStream;II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getOrientation()I

    move-result v10

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getOrientation()I

    move-result v11

    if-eq v10, v11, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    const/4 v10, 0x7

    const-string v11, "The orientation of the template is not matched with this NoteDoc."

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v11

    invoke-direct {p0, p1, v10, v11}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_insertPage(III)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6, v9}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->copy(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    invoke-virtual {v6, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->setTemplateUri(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->clearChangedFlagOfLayer()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xd -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method public isAllPageTextOnly()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_isAllPageTextOnly()Z

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_isChanged()Z

    move-result v0

    return v0
.end method

.method public movePageIndex(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_movePageIndex(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataByteArray(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removeExtraDataByteArray(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataInt(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removeExtraDataInt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataString(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removeExtraDataString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataStringArray(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removeExtraDataStringArray(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removePage(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removePage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public restoreObjectList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_restoreObjectList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public revertToTemplatePage(I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getTemplateUri()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_1

    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeAllObject()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasTemplatePage(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasTemplatePage(Ljava/lang/String;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_revertToTemplatePage(I)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v22, "SpenNoteDoc"

    const-string v23, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v22, "template_name://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :sswitch_0
    new-instance v22, Ljava/io/IOException;

    invoke-direct/range {v22 .. v22}, Ljava/io/IOException;-><init>()V

    throw v22

    :sswitch_1
    new-instance v22, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v23, "It does not correspond to the NoteDoc file format"

    invoke-direct/range {v22 .. v23}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v22

    :sswitch_2
    new-instance v22, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SpenNoteDoc("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") is already closed."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_3
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_revertToTemplatePage(I)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v22

    sparse-switch v22, :sswitch_data_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v22, Ljava/io/IOException;

    invoke-direct/range {v22 .. v22}, Ljava/io/IOException;-><init>()V

    throw v22

    :sswitch_4
    new-instance v22, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v23, "It does not correspond to the NoteDoc file format"

    invoke-direct/range {v22 .. v23}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v22

    :sswitch_5
    new-instance v22, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SpenNoteDoc("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") is already closed."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_4
    const/16 v18, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeAllObject()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :cond_5
    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeAllObject()V

    goto/16 :goto_0

    :cond_6
    :try_start_2
    new-array v0, v9, [B

    move-object/from16 v18, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v22

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    new-instance v22, Ljava/io/IOException;

    const-string v23, "Failed to is.read()"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v19, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getWidth()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;Ljava/io/InputStream;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getOrientation()I

    move-result v22

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getOrientation()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    const/16 v22, 0x7

    const-string v23, "The orientation of the template is not matched with this NoteDoc."

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_8
    invoke-virtual {v15}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeAllObject()V

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v20

    if-nez v20, :cond_9

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v6, :cond_b

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v14

    if-eqz v14, :cond_a

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {v15, v14}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xd -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_3
        0xd -> :sswitch_4
        0x13 -> :sswitch_5
    .end sparse-switch
.end method

.method public revertToTemplatePage(ILjava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeAllObject()V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getWidth()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-direct {v10, v12, v0, v13, v14}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;-><init>(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v10

    :goto_1
    if-nez v9, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v12

    invoke-static {v12}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getOrientation()I

    move-result v12

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getOrientation()I

    move-result v13

    if-eq v12, v13, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    const/4 v12, 0x7

    const-string v13, "The orientation of the template is not matched with this NoteDoc."

    invoke-static {v12, v13}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v11

    if-nez v11, :cond_3

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v12

    invoke-static {v12}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {v7, v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close()V

    goto :goto_0

    :cond_6
    new-instance v12, Ljava/io/IOException;

    const-string v13, "The file does not exist."

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(Ljava/io/ByteArrayOutputStream;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    instance-of v1, p1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(Ljava/io/FileDescriptor;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    const-string v2, "The parameter \'stream\' is unsupported type. This method supports only ByteArrayOutputStream and FileOutputStream"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :sswitch_1
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenNoteDoc("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is already closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public save(Ljava/io/OutputStream;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_1

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(Ljava/io/ByteArrayOutputStream;Z)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    instance-of v2, p1, Ljava/io/FileOutputStream;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(Ljava/io/FileDescriptor;Z)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    const-string v3, "The parameter \'stream\' is unsupported type. This method supports only ByteArrayOutputStream and FileOutputStream"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenNoteDoc"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :sswitch_1
    new-instance v2, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpenNoteDoc("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is already closed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public save(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void

    :sswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :sswitch_1
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpenNoteDoc("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is already closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenNoteDoc"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v2, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpenNoteDoc("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is already closed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setAppName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setAppVersion(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setAppVersion(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setAuthorInfo(Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setAuthorInfo(Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCoverImage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setCoverImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataByteArray(Ljava/lang/String;[BI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataByteArray(Ljava/lang/String;[BI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    goto :goto_0
.end method

.method public setExtraDataInt(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    goto :goto_0
.end method

.method public setGeoTag(DD)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setGeoTag(DD)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTemplateUri(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setTemplateUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
