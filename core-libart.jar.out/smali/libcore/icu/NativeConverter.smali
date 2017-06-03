.class public final Llibcore/icu/NativeConverter;
.super Ljava/lang/Object;
.source "NativeConverter.java"


# static fields
.field private static final registry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Llibcore/icu/NativeConverter;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Llibcore/icu/NativeConverter;->getNativeFinalizer()J

    move-result-wide v2

    invoke-static {}, Llibcore/icu/NativeConverter;->getNativeSize()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Llibcore/icu/NativeConverter;->registry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end method

.method public static native closeConverter(J)V
.end method

.method public static native contains(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native decode(J[BI[CI[IZ)I
.end method

.method public static native encode(J[CI[BI[IZ)I
.end method

.method public static native getAvailableCharsetNames()[Ljava/lang/String;
.end method

.method public static native getAveBytesPerChar(J)F
.end method

.method public static native getAveCharsPerByte(J)F
.end method

.method public static native getMaxBytesPerChar(J)I
.end method

.method public static native getMinBytesPerChar(J)I
.end method

.method public static native getNativeFinalizer()J
.end method

.method public static native getNativeSize()J
.end method

.method public static native getSubstitutionBytes(J)[B
.end method

.method public static native openConverter(Ljava/lang/String;)J
.end method

.method public static registerConverter(Ljava/lang/Object;J)V
    .locals 1

    sget-object v0, Llibcore/icu/NativeConverter;->registry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method public static native resetByteToChar(J)V
.end method

.method public static native resetCharToByte(J)V
.end method

.method private static native setCallbackDecode(JIILjava/lang/String;)V
.end method

.method public static setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)V
    .locals 4

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->replacement()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Llibcore/icu/NativeConverter;->setCallbackDecode(JIILjava/lang/String;)V

    return-void
.end method

.method private static native setCallbackEncode(JII[B)V
.end method

.method public static setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)V
    .locals 4

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeConverter;->translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->replacement()[B

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Llibcore/icu/NativeConverter;->setCallbackEncode(JII[B)V

    return-void
.end method

.method private static translateCodingErrorAction(Ljava/nio/charset/CodingErrorAction;)I
    .locals 1

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
