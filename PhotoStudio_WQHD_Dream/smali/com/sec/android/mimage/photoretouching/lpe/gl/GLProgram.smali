.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;
.super Ljava/lang/Object;
.source "GLProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;
    }
.end annotation


# static fields
.field public static final AA_LINE_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nvarying vec2 v_TextureCoordinate;\nuniform vec4 u_Color;\nvec4 outside;\nuniform float deltaX;\nuniform float deltaY;\nvoid main() { \noutside = vec4(0.0);float smoothX = smoothstep(1.0 - deltaX, 1.0, v_TextureCoordinate.x) + 1.0 - smoothstep(0.0, deltaX, v_TextureCoordinate.x);\nfloat smoothY = smoothstep(1.0 - deltaY, 1.0, v_TextureCoordinate.y) + 1.0 - smoothstep(0.0, deltaY, v_TextureCoordinate.y);\ngl_FragColor = mix(u_Color,outside,smoothY + smoothX);\n}"

.field public static final ATTR_CIRCLE_TEXT_COORDINATE:Ljava/lang/String; = "a_CircleTextureCoordinate"

.field public static final ATTR_POSITION:Ljava/lang/String; = "a_Position"

.field public static final ATTR_TEXTURE_COORDINATE:Ljava/lang/String; = "a_TextureCoordinate"

.field public static final BASE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform vec4 u_Color;void main() { \ngl_FragColor = u_Color;}"

.field public static final BASE_VERTEX_SHADER:Ljava/lang/String; = "attribute vec2 a_Position;\nuniform mat4 u_Matrix;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\n }"

.field public static final CIRCLE_FILL_VERTEX_SHADER:Ljava/lang/String; = "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nattribute vec2 a_CircleTextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvarying vec2 v_CircleTextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\nv_CircleTextureCoordinate = a_CircleTextureCoordinate;\n }"

.field public static final CIRCLE_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nvarying vec2 v_TextureCoordinate;\nuniform vec4 u_Color;\nuniform float uWidth;uniform float delta;\nvec4 outside;\nvoid main() { \noutside = vec4(0.0);vec2 u_Center = vec2(0.5,0.5);\nfloat dist = distance(u_Center,vec2(v_TextureCoordinate.x,v_TextureCoordinate.y));\nfloat smallrad = 0.5 - uWidth * 0.5 - step(0.491,0.5 - uWidth * 0.1)*0.005;\nfloat alpha = smoothstep(0.5-delta, 0.5, dist) + 1.0 - smoothstep(smallrad-delta, smallrad, dist);\ngl_FragColor = mix(u_Color,outside,alpha);\n}"

.field public static final CIRCLE_RGB_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nvec4 outside;\nvoid main() { \nvec4 tmp = texture2D(u_Sampler, v_TextureCoordinate).bgra ;\noutside = vec4(0.0);vec2 u_Center = vec2(0.5,0.5);\nfloat dist = distance(u_Center,vec2(v_TextureCoordinate.x,v_TextureCoordinate.y));\nfloat delta = 0.009;\nfloat smallrad = 0.5 - 1.01 * 0.5 - step(0.491,0.5 - 1.01 * 0.1)*0.005;\nfloat alpha = smoothstep(0.5-delta, 0.5, dist) + 1.0 - smoothstep(smallrad-delta, smallrad, dist);\ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - alpha));}"

.field public static final CIRCLE_TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nvarying vec2 v_CircleTextureCoordinate;\nconst float delta = 0.009;\nuniform sampler2D u_Sampler;\nvec4 outside;\nvec4 tmp;\nvoid main() { \nfloat textX = v_TextureCoordinate.x;\nfloat textY = v_TextureCoordinate.y;\ntmp = texture2D(u_Sampler, vec2(textX, textY)).bgra ;\noutside = vec4(tmp.rgb, 0.0);vec2 center = vec2(0.5,0.5);\nfloat dist = distance(center, vec2(v_CircleTextureCoordinate.x,v_CircleTextureCoordinate.y));\nfloat alpha = smoothstep(0.5-delta, 0.5, dist);\nfloat clmp = 1.0 - step(0.0, textX) * step(0.0, textY) * (1.0 - step(1.0, textX)) * (1.0 - step(1.0, textY));\ngl_FragColor = mix(tmp,outside,alpha + clmp);\n}"

.field public static final CIRCLE_VERTEX_SHADER:Ljava/lang/String; = "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

.field public static CURVE_FRAGMENT_SHADER:Ljava/lang/String; = null

.field public static CURVE_VERTEX_SHADER:Ljava/lang/String; = null

.field public static final PERSPECTIVE_CIRCLE_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nuniform sampler2D u_Sampler;\nuniform sampler2D u_Sampler1;\nvarying vec4 v_TextureCoordinates;\nvarying vec2 v_CircleTextureCoordinate;\nvoid main() {\nvec4 color1 = texture2DProj(u_Sampler, v_TextureCoordinates);\nvec4 color = texture2D(u_Sampler1, v_CircleTextureCoordinate);\nfloat clmp = 1.0 - step(0.0, v_CircleTextureCoordinate.x) * step(0.0, v_CircleTextureCoordinate.y) * (1.0 - step(1.0, v_CircleTextureCoordinate.x)) * (1.0 - step(1.0, v_CircleTextureCoordinate.y));\ngl_FragColor = mix(vec4(color.bgr, color1.a ), vec4(0.0), clmp);\n}"

.field public static final PERSPECTIVE_CIRCLE_VERTEX_SHADER:Ljava/lang/String; = "precision highp float;\nuniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinate;\nattribute vec2 a_CircleTextureCoordinate;\nvarying vec4 v_TextureCoordinates;\nvarying vec2 v_CircleTextureCoordinate;\nvoid main() {\nv_TextureCoordinates = a_TextureCoordinate;\nv_CircleTextureCoordinate = a_CircleTextureCoordinate;\ngl_Position = u_Matrix * a_Position;\n}"

.field public static final PERSPECTIVE_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nuniform sampler2D u_Sampler;\nvarying vec4 v_TextureCoordinates;\nuniform float isRGBA;\nuniform vec4 light;\nvoid main() {\nvec4 color1 = texture2DProj(u_Sampler, v_TextureCoordinates);\nvec4 color;\nif(isRGBA == 1.0)\ncolor = vec4(color1.rgb, color1.a);\nelse \ncolor = vec4(color1.bgr, color1.a);\ngl_FragColor = color * light;\n}"

.field public static final PERSPECTIVE_VERTEX_SHADER:Ljava/lang/String; = "precision highp float;\nuniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinate;\nvarying vec4 v_TextureCoordinates;\nvoid main() {\nv_TextureCoordinates = a_TextureCoordinate;\ngl_Position = u_Matrix * a_Position;\n}"

.field public static final PROGRAM_TYPE_AA_LINE_SHADER:I = 0x8

.field public static final PROGRAM_TYPE_BASE:I = 0x0

.field public static final PROGRAM_TYPE_CIRCLE_PERSPECTIVE:I = 0xb

.field public static final PROGRAM_TYPE_CIRCLE_SHADER:I = 0x5

.field public static final PROGRAM_TYPE_CIRCLE_TEXTURE:I = 0x9

.field public static final PROGRAM_TYPE_CIRCLE_TEXTURE_RGB:I = 0x7

.field public static final PROGRAM_TYPE_CURVE:I = 0xc

.field public static final PROGRAM_TYPE_PERSPECTIVE:I = 0xa

.field public static final PROGRAM_TYPE_TEXTURE:I = 0x1

.field public static final PROGRAM_TYPE_TEXTURE_ALPHA:I = 0x4

.field public static final PROGRAM_TYPE_TEXTURE_RGB:I = 0x2

.field public static final PROGRAM_TYPE_TEXTURE_RGB_DIM:I = 0x3

.field public static final PROGRAM_TYPE_TEXTURE_RGB_SUPER:I = 0x6

.field public static final TAG:Ljava/lang/String; = "PEDIT_GLProgram"

.field public static final TEXTURE_ALPHA_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nuniform float alpha;void main() { \ngl_FragColor = texture2D(u_Sampler, v_TextureCoordinate)* vec4(1.0,1.0,1.0,alpha);\n}"

.field public static final TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nvoid main() { \ngl_FragColor = texture2D(u_Sampler, v_TextureCoordinate);\n}"

.field public static final TEXTURE_RGB_DIM_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nuniform vec4 light;\nuniform mat4 v_uPerMatrix;\nuniform int u_isPerspective;\nuniform vec4 u_blending_color ;\nvoid main() { \nif(u_isPerspective == 1){ \nfloat f0 = v_uPerMatrix[0][0] * v_TextureCoordinate.x + v_uPerMatrix[0][1] * v_TextureCoordinate.y + v_uPerMatrix[0][3];\nfloat f1 = v_uPerMatrix[1][0] * v_TextureCoordinate.x + v_uPerMatrix[1][1] * v_TextureCoordinate.y + v_uPerMatrix[1][3];\nfloat f2 = v_uPerMatrix[2][0] * v_TextureCoordinate.x + v_uPerMatrix[2][1] * v_TextureCoordinate.y + v_uPerMatrix[2][3];\nfloat f3 = v_uPerMatrix[3][0] * v_TextureCoordinate.x + v_uPerMatrix[3][1] * v_TextureCoordinate.y + v_uPerMatrix[3][3];\nvec2 tc = vec2(f0/f3, f1/f3);\nif (tc.x < 0.0 || tc.x > 1.0 || tc.y < 0.0 || tc.y > 1.0 )\ndiscard;\nvec4 tmp = texture2D(u_Sampler, tc).bgra;\nif( u_blending_color.a > 0.0 )\ntmp = vec4( tmp.rgb * tmp.a + ( 1.0 - tmp.a ) * u_blending_color.rgb, tmp.a + (1.0 - tmp.a) * u_blending_color.a); \ngl_FragColor = tmp.rgba * light;\n} else{ \ngl_FragColor = texture2D(u_Sampler, v_TextureCoordinate).bgra * light;\n}\n}"

.field public static final TEXTURE_RGB_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nuniform float alpha;\nuniform vec4 u_blending_color;\nvoid main() { \nvec4 tmp = texture2D(u_Sampler, v_TextureCoordinate).bgra ;\nif( u_blending_color.a > 0.0 )\ntmp = vec4( tmp.rgb * tmp.a + ( 1.0 - tmp.a ) * u_blending_color.rgb, tmp.a + (1.0 - tmp.a) * u_blending_color.a); \ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - alpha));}"

.field public static final TEXTURE_RGB_FRAGMENT_SHADER_SUPER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nuniform float alpha;uniform float top;uniform float bottom;uniform float portrait;void main() { \nvec4 tmp = texture2D(u_Sampler, v_TextureCoordinate).bgra ;\nif(portrait == 1.0  ) { \nif(gl_FragCoord.y < top || gl_FragCoord.y > bottom  ) { \ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - 0.7));} else{\ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - alpha));} \n} else{\nif(gl_FragCoord.x < top || gl_FragCoord.x > bottom  ) { \ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - 0.7));} else{\ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - alpha));} \n} \n}"

.field public static final TEXTURE_VERTEX_SHADER:Ljava/lang/String; = "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

.field public static final UNI_BLENDING_COLOR:Ljava/lang/String; = "u_blending_color"

.field public static final UNI_COLOR:Ljava/lang/String; = "u_Color"

.field public static final UNI_CURVE_PARAMETER:Ljava/lang/String; = "u_CurveParameter"

.field public static final UNI_FITTING_POINT:Ljava/lang/String; = "u_FittingPoint"

.field public static final UNI_IS_PERSPECTIVE:Ljava/lang/String; = "u_isPerspective"

.field public static final UNI_IS_RGBA:Ljava/lang/String; = "isRGBA"

.field public static final UNI_LIGHT:Ljava/lang/String; = "light"

.field public static final UNI_LINE_WIDTH:Ljava/lang/String; = "u_LineWidth"

.field public static final UNI_MATRIX:Ljava/lang/String; = "u_Matrix"

.field public static final UNI_PER_MATRIX:Ljava/lang/String; = "v_uPerMatrix"

.field public static final UNI_POINT_COUNT:Ljava/lang/String; = "u_PointCount"

.field public static final UNI_SAMPLER:Ljava/lang/String; = "u_Sampler"

.field public static final UNI_SAMPLER_1:Ljava/lang/String; = "u_Sampler1"

.field public static final UNI_SCREEN_HEIGHT:Ljava/lang/String; = "u_ScreenHeight"

.field public static final UNI_SCREEN_WIDTH:Ljava/lang/String; = "u_ScreenWidth"

.field public static final UNI_STROKE_WIDTH:Ljava/lang/String; = "u_StrokeWidth"


# instance fields
.field public mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

.field public mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nuniform mat4 u_Matrix;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\n }"

    const-string v2, "precision mediump float;\nuniform vec4 u_Color;void main() { \ngl_FragColor = u_Color;}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Color"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Color"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v2, "precision highp float;\nvarying vec2 v_TextureCoordinate;\nuniform vec4 u_Color;\nuniform float uWidth;uniform float delta;\nvec4 outside;\nvoid main() { \noutside = vec4(0.0);vec2 u_Center = vec2(0.5,0.5);\nfloat dist = distance(u_Center,vec2(v_TextureCoordinate.x,v_TextureCoordinate.y));\nfloat smallrad = 0.5 - uWidth * 0.5 - step(0.491,0.5 - uWidth * 0.1)*0.005;\nfloat alpha = smoothstep(0.5-delta, 0.5, dist) + 1.0 - smoothstep(smallrad-delta, smallrad, dist);\ngl_FragColor = mix(u_Color,outside,alpha);\n}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Color"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Color"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v2, "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nvec4 outside;\nvoid main() { \nvec4 tmp = texture2D(u_Sampler, v_TextureCoordinate).bgra ;\noutside = vec4(0.0);vec2 u_Center = vec2(0.5,0.5);\nfloat dist = distance(u_Center,vec2(v_TextureCoordinate.x,v_TextureCoordinate.y));\nfloat delta = 0.009;\nfloat smallrad = 0.5 - 1.01 * 0.5 - step(0.491,0.5 - 1.01 * 0.1)*0.005;\nfloat alpha = smoothstep(0.5-delta, 0.5, dist) + 1.0 - smoothstep(smallrad-delta, smallrad, dist);\ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - alpha));}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nattribute vec2 a_CircleTextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvarying vec2 v_CircleTextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\nv_CircleTextureCoordinate = a_CircleTextureCoordinate;\n }"

    const-string v2, "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nvarying vec2 v_CircleTextureCoordinate;\nconst float delta = 0.009;\nuniform sampler2D u_Sampler;\nvec4 outside;\nvec4 tmp;\nvoid main() { \nfloat textX = v_TextureCoordinate.x;\nfloat textY = v_TextureCoordinate.y;\ntmp = texture2D(u_Sampler, vec2(textX, textY)).bgra ;\noutside = vec4(tmp.rgb, 0.0);vec2 center = vec2(0.5,0.5);\nfloat dist = distance(center, vec2(v_CircleTextureCoordinate.x,v_CircleTextureCoordinate.y));\nfloat alpha = smoothstep(0.5-delta, 0.5, dist);\nfloat clmp = 1.0 - step(0.0, textX) * step(0.0, textY) * (1.0 - step(1.0, textX)) * (1.0 - step(1.0, textY));\ngl_FragColor = mix(tmp,outside,alpha + clmp);\n}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_CircleTextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_CircleTextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v2, "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nvoid main() { \ngl_FragColor = texture2D(u_Sampler, v_TextureCoordinate);\n}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v2, "precision highp float;\nvarying vec2 v_TextureCoordinate;\nuniform vec4 u_Color;\nvec4 outside;\nuniform float deltaX;\nuniform float deltaY;\nvoid main() { \noutside = vec4(0.0);float smoothX = smoothstep(1.0 - deltaX, 1.0, v_TextureCoordinate.x) + 1.0 - smoothstep(0.0, deltaX, v_TextureCoordinate.x);\nfloat smoothY = smoothstep(1.0 - deltaY, 1.0, v_TextureCoordinate.y) + 1.0 - smoothstep(0.0, deltaY, v_TextureCoordinate.y);\ngl_FragColor = mix(u_Color,outside,smoothY + smoothX);\n}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Color"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Color"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "deltaX"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "deltaX"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "deltaY"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "deltaY"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v2, "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nuniform float alpha;\nuniform vec4 u_blending_color;\nvoid main() { \nvec4 tmp = texture2D(u_Sampler, v_TextureCoordinate).bgra ;\nif( u_blending_color.a > 0.0 )\ntmp = vec4( tmp.rgb * tmp.a + ( 1.0 - tmp.a ) * u_blending_color.rgb, tmp.a + (1.0 - tmp.a) * u_blending_color.a); \ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - alpha));}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_blending_color"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_blending_color"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v2, "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nuniform float alpha;uniform float top;uniform float bottom;uniform float portrait;void main() { \nvec4 tmp = texture2D(u_Sampler, v_TextureCoordinate).bgra ;\nif(portrait == 1.0  ) { \nif(gl_FragCoord.y < top || gl_FragCoord.y > bottom  ) { \ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - 0.7));} else{\ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - alpha));} \n} else{\nif(gl_FragCoord.x < top || gl_FragCoord.x > bottom  ) { \ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - 0.7));} else{\ngl_FragColor = vec4(tmp.rgb, tmp.a *( 1.0 - alpha));} \n} \n}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v2, "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nuniform vec4 light;\nuniform mat4 v_uPerMatrix;\nuniform int u_isPerspective;\nuniform vec4 u_blending_color ;\nvoid main() { \nif(u_isPerspective == 1){ \nfloat f0 = v_uPerMatrix[0][0] * v_TextureCoordinate.x + v_uPerMatrix[0][1] * v_TextureCoordinate.y + v_uPerMatrix[0][3];\nfloat f1 = v_uPerMatrix[1][0] * v_TextureCoordinate.x + v_uPerMatrix[1][1] * v_TextureCoordinate.y + v_uPerMatrix[1][3];\nfloat f2 = v_uPerMatrix[2][0] * v_TextureCoordinate.x + v_uPerMatrix[2][1] * v_TextureCoordinate.y + v_uPerMatrix[2][3];\nfloat f3 = v_uPerMatrix[3][0] * v_TextureCoordinate.x + v_uPerMatrix[3][1] * v_TextureCoordinate.y + v_uPerMatrix[3][3];\nvec2 tc = vec2(f0/f3, f1/f3);\nif (tc.x < 0.0 || tc.x > 1.0 || tc.y < 0.0 || tc.y > 1.0 )\ndiscard;\nvec4 tmp = texture2D(u_Sampler, tc).bgra;\nif( u_blending_color.a > 0.0 )\ntmp = vec4( tmp.rgb * tmp.a + ( 1.0 - tmp.a ) * u_blending_color.rgb, tmp.a + (1.0 - tmp.a) * u_blending_color.a); \ngl_FragColor = tmp.rgba * light;\n} else{ \ngl_FragColor = texture2D(u_Sampler, v_TextureCoordinate).bgra * light;\n}\n}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "v_uPerMatrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "v_uPerMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_isPerspective"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_isPerspective"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_blending_color"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_blending_color"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "attribute vec2 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\ngl_Position = u_Matrix*vec4(a_Position,0,1);\nv_TextureCoordinate = a_TextureCoordinate;\n }"

    const-string v2, "precision mediump float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nuniform float alpha;void main() { \ngl_FragColor = texture2D(u_Sampler, v_TextureCoordinate)* vec4(1.0,1.0,1.0,alpha);\n}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "precision highp float;\nuniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinate;\nvarying vec4 v_TextureCoordinates;\nvoid main() {\nv_TextureCoordinates = a_TextureCoordinate;\ngl_Position = u_Matrix * a_Position;\n}"

    const-string v2, "precision highp float;\nuniform sampler2D u_Sampler;\nvarying vec4 v_TextureCoordinates;\nuniform float isRGBA;\nuniform vec4 light;\nvoid main() {\nvec4 color1 = texture2DProj(u_Sampler, v_TextureCoordinates);\nvec4 color;\nif(isRGBA == 1.0)\ncolor = vec4(color1.rgb, color1.a);\nelse \ncolor = vec4(color1.bgr, color1.a);\ngl_FragColor = color * light;\n}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "isRGBA"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "isRGBA"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "light"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "light"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "precision highp float;\nuniform mat4 u_Matrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinate;\nattribute vec2 a_CircleTextureCoordinate;\nvarying vec4 v_TextureCoordinates;\nvarying vec2 v_CircleTextureCoordinate;\nvoid main() {\nv_TextureCoordinates = a_TextureCoordinate;\nv_CircleTextureCoordinate = a_CircleTextureCoordinate;\ngl_Position = u_Matrix * a_Position;\n}"

    const-string v2, "precision highp float;\nuniform sampler2D u_Sampler;\nuniform sampler2D u_Sampler1;\nvarying vec4 v_TextureCoordinates;\nvarying vec2 v_CircleTextureCoordinate;\nvoid main() {\nvec4 color1 = texture2DProj(u_Sampler, v_TextureCoordinates);\nvec4 color = texture2D(u_Sampler1, v_CircleTextureCoordinate);\nfloat clmp = 1.0 - step(0.0, v_CircleTextureCoordinate.x) * step(0.0, v_CircleTextureCoordinate.y) * (1.0 - step(1.0, v_CircleTextureCoordinate.x)) * (1.0 - step(1.0, v_CircleTextureCoordinate.y));\ngl_FragColor = mix(vec4(color.bgr, color1.a ), vec4(0.0), clmp);\n}"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_TextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_TextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Sampler1"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Sampler1"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_CircleTextureCoordinate"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_CircleTextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isAdvancedModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060003

    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->CURVE_VERTEX_SHADER:Ljava/lang/String;

    const v0, 0x7f060002

    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->CURVE_FRAGMENT_SHADER:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->CURVE_VERTEX_SHADER:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->CURVE_FRAGMENT_SHADER:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "a_Position"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Matrix"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Matrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_PointCount"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_PointCount"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_FittingPoint"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_FittingPoint"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_CurveParameter"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_CurveParameter"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_LineWidth"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_LineWidth"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_StrokeWidth"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_StrokeWidth"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_ScreenWidth"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_ScreenWidth"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_ScreenHeight"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_ScreenHeight"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    const-string v1, "u_Color"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "u_Color"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->addLocation(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getProgram(I)I
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_9
    const/16 v0, 0xb

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_a
    const/16 v0, 0xc

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    goto :goto_0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const v7, 0x8b81

    const/4 v4, 0x0

    const v5, 0x8b31

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    const v5, 0x8b30

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v5, 0x1

    new-array v2, v5, [I

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {v3, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_0

    const-string v5, "PEDIT_GLProgram"

    const-string v6, "vertex shader compilation failed...."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PEDIT_GLProgram"

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :goto_0
    return v1

    :cond_0
    const-string v5, "PEDIT_GLProgram"

    const-string v6, "vertex shader compilation successful"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {v0, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_1

    const-string v5, "PEDIT_GLProgram"

    const-string v6, "fragment shader compilation failed...."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PEDIT_GLProgram"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v5, "PEDIT_GLProgram"

    const-string v6, "fragment shader compilation successful"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v5, 0x8b82

    invoke-static {v1, v5, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_2

    const-string v5, "PEDIT_GLProgram"

    const-string v6, "program link error..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PEDIT_GLProgram"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v4, "PEDIT_GLProgram"

    const-string v5, "program link successful"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mBaseProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBProgramSuper:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureRGBDimProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mTextureAlphaProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPickCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mAALineProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCircleTextureProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspectiveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_a
    const/16 v0, 0xb

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mPerspCircleProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_b
    const/16 v0, 0xc

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;->mCurveProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    goto :goto_0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
