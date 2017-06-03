.class final Ljava/math/BigInt;
.super Ljava/lang/Object;
.source "BigInt.java"


# static fields
.field private static registry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field transient bignum:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Ljava/math/BigInt;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Ljava/math/NativeBN;->getNativeFinalizer()J

    move-result-wide v2

    invoke-static {}, Ljava/math/NativeBN;->size()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Ljava/math/BigInt;->registry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/math/BigInt;->bignum:J

    return-void
.end method

.method static addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_add(JJJ)V

    return-object v6
.end method

.method static bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_exp(JJJ)V

    return-object v6
.end method

.method static cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I
    .locals 4

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p1, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, v2, v3}, Ljava/math/NativeBN;->BN_cmp(JJ)I

    move-result v0

    return v0
.end method

.method static division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V
    .locals 8

    if-eqz p2, :cond_0

    invoke-direct {p2}, Ljava/math/BigInt;->makeValid()V

    iget-wide v0, p2, Ljava/math/BigInt;->bignum:J

    :goto_0
    if-eqz p3, :cond_1

    invoke-direct {p3}, Ljava/math/BigInt;->makeValid()V

    iget-wide v2, p3, Ljava/math/BigInt;->bignum:J

    :goto_1
    iget-wide v4, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v6, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v7}, Ljava/math/NativeBN;->BN_div(JJJJ)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method static exp(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .locals 4

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/math/BigInt;->putLongInt(J)V

    invoke-static {p0, v0}, Ljava/math/BigInt;->bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    return-object v1
.end method

.method static gcd(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_gcd(JJJ)V

    return-object v6
.end method

.method static generatePrimeDefault(I)Ljava/math/BigInt;
    .locals 11

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v10

    iget-wide v0, v10, Ljava/math/BigInt;->bignum:J

    const/4 v3, 0x0

    move v2, p0

    move-wide v6, v4

    move-wide v8, v4

    invoke-static/range {v0 .. v9}, Ljava/math/NativeBN;->BN_generate_prime_ex(JIZJJJ)V

    return-object v10
.end method

.method private invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid BigInteger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeValid()V
    .locals 4

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/math/NativeBN;->BN_new()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigInt;->bignum:J

    sget-object v0, Ljava/math/BigInt;->registry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method static modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 9

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v8

    iget-wide v0, v8, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    iget-wide v6, p2, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v7}, Ljava/math/NativeBN;->BN_mod_exp(JJJJ)V

    return-object v8
.end method

.method static modInverse(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_mod_inverse(JJJ)V

    return-object v6
.end method

.method static modulus(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_nnmod(JJJ)V

    return-object v6
.end method

.method private static newBigInt()Ljava/math/BigInt;
    .locals 4

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-static {}, Ljava/math/NativeBN;->BN_new()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/math/BigInt;->bignum:J

    sget-object v1, Ljava/math/BigInt;->registry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, v0, Ljava/math/BigInt;->bignum:J

    invoke-virtual {v1, v0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-object v0
.end method

.method static product(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_mul(JJJ)V

    return-object v6
.end method

.method static remainderByPositiveInt(Ljava/math/BigInt;I)I
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_mod_word(JI)I

    move-result v0

    return v0
.end method

.method static shift(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .locals 6

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v0

    iget-wide v2, v0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v2, v3, v4, v5, p1}, Ljava/math/NativeBN;->BN_shift(JJI)V

    return-object v0
.end method

.method static subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7

    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    move-result-object v6

    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_sub(JJJ)V

    return-object v6
.end method

.method private static toAscii(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_0

    const/16 v5, 0x9

    if-gt v4, v5, :cond_0

    add-int/lit8 v5, v4, 0x30

    int-to-char v0, v5

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method add(Ljava/math/BigInt;)V
    .locals 6

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_add(JJJ)V

    return-void
.end method

.method addPositiveInt(I)V
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_add_word(JI)V

    return-void
.end method

.method bigEndianMagnitude()[B
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_bn2bin(J)[B

    move-result-object v0

    return-object v0
.end method

.method bitLength()I
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->bitLength(J)I

    move-result v0

    return v0
.end method

.method checkString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "s == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    :goto_0
    sub-int v4, v1, v2

    if-nez v4, :cond_3

    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    :cond_2
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    :cond_4
    const/16 v4, 0x80

    if-le v0, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {p1, p2}, Ljava/math/BigInt;->toAscii(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method copy()Ljava/math/BigInt;
    .locals 1

    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    invoke-virtual {v0, p0}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    return-object v0
.end method

.method decString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_bn2dec(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNativeBIGNUM()J
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    return-wide v0
.end method

.method hexString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_bn2hex(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isBitSet(I)Z
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_is_bit_set(JI)Z

    move-result v0

    return v0
.end method

.method isPrime(I)Z
    .locals 4

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Ljava/math/NativeBN;->BN_is_prime_ex(JIJ)Z

    move-result v0

    return v0
.end method

.method littleEndianIntsMagnitude()[I
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->bn2litEndInts(J)[I

    move-result-object v0

    return-object v0
.end method

.method longInt()J
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->longInt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method multiplyByPositiveInt(I)V
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_mul_word(JI)V

    return-void
.end method

.method putBigEndian([BZ)V
    .locals 4

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    array-length v0, p1

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {p1, v0, p2, v2, v3}, Ljava/math/NativeBN;->BN_bin2bn([BIZJ)V

    return-void
.end method

.method putBigEndianTwosComplement([B)V
    .locals 4

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    array-length v0, p1

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {p1, v0, v2, v3}, Ljava/math/NativeBN;->twosComp2bn([BIJ)V

    return-void
.end method

.method putCopy(Ljava/math/BigInt;)V
    .locals 4

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p1, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, v2, v3}, Ljava/math/NativeBN;->BN_copy(JJ)V

    return-void
.end method

.method putDecString(Ljava/lang/String;)V
    .locals 4

    const/16 v2, 0xa

    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v2, v3, v0}, Ljava/math/NativeBN;->BN_dec2bn(JLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    :cond_0
    return-void
.end method

.method putHexString(Ljava/lang/String;)V
    .locals 4

    const/16 v2, 0x10

    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v2, v3, v0}, Ljava/math/NativeBN;->BN_hex2bn(JLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    :cond_0
    return-void
.end method

.method putLittleEndianInts([IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    array-length v0, p1

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {p1, v0, p2, v2, v3}, Ljava/math/NativeBN;->litEndInts2bn([IIZJ)V

    return-void
.end method

.method putLongInt(J)V
    .locals 3

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1, p2}, Ljava/math/NativeBN;->putLongInt(JJ)V

    return-void
.end method

.method putULongInt(JZ)V
    .locals 3

    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, p1, p2, p3}, Ljava/math/NativeBN;->putULongInt(JJZ)V

    return-void
.end method

.method setSign(I)V
    .locals 3

    const/4 v2, 0x0

    if-lez p1, :cond_1

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, v2}, Ljava/math/NativeBN;->BN_set_negative(JI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_0

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/math/NativeBN;->BN_set_negative(JI)V

    goto :goto_0
.end method

.method shift(I)V
    .locals 4

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1, v2, v3, p1}, Ljava/math/NativeBN;->BN_shift(JJI)V

    return-void
.end method

.method sign()I
    .locals 2

    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v0, v1}, Ljava/math/NativeBN;->sign(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method twosCompFitsIntoBytes(I)Z
    .locals 4

    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    invoke-static {v2, v3}, Ljava/math/NativeBN;->bitLength(J)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v0, v1, 0x8

    if-gt v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
