/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (5.1.0).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package com.mocker.api;

import com.mocker.domain.dto.ErrorDto;
import com.mocker.domain.dto.TableDto;
import java.util.UUID;
import io.swagger.annotations.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.multipart.MultipartFile;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;
import java.util.Optional;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2023-06-06T21:19:09.773925100+07:00[Asia/Saigon]")
@Validated
@Api(value = "table", description = "the table API")
public interface TableApi {

    default Optional<NativeWebRequest> getRequest() {
        return Optional.empty();
    }

    /**
     * DELETE /table/{id}
     * Delete a table
     *
     * @param id The table ID (required)
     * @return The query is successful (status code 200)
     *         or Bad request, invalid query syntax (status code 400)
     *         or Authentication Error (status code 401)
     *         or Unauthorized, access to this resource is not allowed (status code 403)
     *         or The specified resource was not found (status code 404)
     *         or Internal Server Error (status code 500)
     */
    @ApiOperation(value = "", nickname = "deleteTable", notes = "Delete a table", response = TableDto.class, tags={ "Table", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "The query is successful", response = TableDto.class),
        @ApiResponse(code = 400, message = "Bad request, invalid query syntax", response = ErrorDto.class),
        @ApiResponse(code = 401, message = "Authentication Error", response = ErrorDto.class),
        @ApiResponse(code = 403, message = "Unauthorized, access to this resource is not allowed", response = ErrorDto.class),
        @ApiResponse(code = 404, message = "The specified resource was not found", response = ErrorDto.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = ErrorDto.class) })
    @DeleteMapping(
        value = "/table/{id}",
        produces = { "application/json", "application/problem+json" }
    )
    default ResponseEntity<TableDto> deleteTable(@ApiParam(value = "The table ID",required=true) @PathVariable("id") UUID id) {
        getRequest().ifPresent(request -> {
            for (MediaType mediaType: MediaType.parseMediaTypes(request.getHeader("Accept"))) {
                if (mediaType.isCompatibleWith(MediaType.valueOf("application/json"))) {
                    String exampleString = "{ \"name\" : \"name\", \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"row\" : 80, \"fields\" : [ { \"generateType\" : { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, \"sqlType\" : { \"code\" : \"code\", \"generateTypes\" : [ { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" }, \"name\" : \"name\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"option\" : { \"blank\" : 60, \"unique\" : false, \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, { \"generateType\" : { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, \"sqlType\" : { \"code\" : \"code\", \"generateTypes\" : [ { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" }, \"name\" : \"name\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"option\" : { \"blank\" : 60, \"unique\" : false, \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } } ] }";
                    ApiUtil.setExampleResponse(request, "application/json", exampleString);
                    break;
                }
            }
        });
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);

    }


    /**
     * GET /table/{id}
     * Get a table
     *
     * @param id The table ID (required)
     * @return The query is successful (status code 200)
     *         or Bad request, invalid query syntax (status code 400)
     *         or Authentication Error (status code 401)
     *         or Unauthorized, access to this resource is not allowed (status code 403)
     *         or The specified resource was not found (status code 404)
     *         or Internal Server Error (status code 500)
     */
    @ApiOperation(value = "", nickname = "getTable", notes = "Get a table", response = TableDto.class, tags={ "Table", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "The query is successful", response = TableDto.class),
        @ApiResponse(code = 400, message = "Bad request, invalid query syntax", response = ErrorDto.class),
        @ApiResponse(code = 401, message = "Authentication Error", response = ErrorDto.class),
        @ApiResponse(code = 403, message = "Unauthorized, access to this resource is not allowed", response = ErrorDto.class),
        @ApiResponse(code = 404, message = "The specified resource was not found", response = ErrorDto.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = ErrorDto.class) })
    @GetMapping(
        value = "/table/{id}",
        produces = { "application/json", "application/problem+json" }
    )
    default ResponseEntity<TableDto> getTable(@ApiParam(value = "The table ID",required=true) @PathVariable("id") UUID id) {
        getRequest().ifPresent(request -> {
            for (MediaType mediaType: MediaType.parseMediaTypes(request.getHeader("Accept"))) {
                if (mediaType.isCompatibleWith(MediaType.valueOf("application/json"))) {
                    String exampleString = "{ \"name\" : \"name\", \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"row\" : 80, \"fields\" : [ { \"generateType\" : { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, \"sqlType\" : { \"code\" : \"code\", \"generateTypes\" : [ { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" }, \"name\" : \"name\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"option\" : { \"blank\" : 60, \"unique\" : false, \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, { \"generateType\" : { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, \"sqlType\" : { \"code\" : \"code\", \"generateTypes\" : [ { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" }, \"name\" : \"name\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"option\" : { \"blank\" : 60, \"unique\" : false, \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } } ] }";
                    ApiUtil.setExampleResponse(request, "application/json", exampleString);
                    break;
                }
            }
        });
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);

    }


    /**
     * POST /table
     * Update or insert a Table
     *
     * @param tableDto  (required)
     * @return The query is successful (status code 200)
     *         or Bad request, invalid query syntax (status code 400)
     *         or Authentication Error (status code 401)
     *         or Unauthorized, access to this resource is not allowed (status code 403)
     *         or The specified resource was not found (status code 404)
     *         or Internal Server Error (status code 500)
     */
    @ApiOperation(value = "", nickname = "upsertTable", notes = "Update or insert a Table", response = TableDto.class, tags={ "Table", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "The query is successful", response = TableDto.class),
        @ApiResponse(code = 400, message = "Bad request, invalid query syntax", response = ErrorDto.class),
        @ApiResponse(code = 401, message = "Authentication Error", response = ErrorDto.class),
        @ApiResponse(code = 403, message = "Unauthorized, access to this resource is not allowed", response = ErrorDto.class),
        @ApiResponse(code = 404, message = "The specified resource was not found", response = ErrorDto.class),
        @ApiResponse(code = 500, message = "Internal Server Error", response = ErrorDto.class) })
    @PostMapping(
        value = "/table",
        produces = { "application/json", "application/problem+json" },
        consumes = { "application/json" }
    )
    default ResponseEntity<TableDto> upsertTable(@ApiParam(value = "" ,required=true )  @Valid @RequestBody TableDto tableDto) {
        getRequest().ifPresent(request -> {
            for (MediaType mediaType: MediaType.parseMediaTypes(request.getHeader("Accept"))) {
                if (mediaType.isCompatibleWith(MediaType.valueOf("application/json"))) {
                    String exampleString = "{ \"name\" : \"name\", \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"row\" : 80, \"fields\" : [ { \"generateType\" : { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, \"sqlType\" : { \"code\" : \"code\", \"generateTypes\" : [ { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" }, \"name\" : \"name\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"option\" : { \"blank\" : 60, \"unique\" : false, \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, { \"generateType\" : { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, \"sqlType\" : { \"code\" : \"code\", \"generateTypes\" : [ { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } }, { \"sqlTypes\" : [ null, null ], \"code\" : \"code\", \"sources\" : [ { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" }, { \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"value\" : \"value\" } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"category\" : { \"name\" : \"name\", \"generateTypes\" : [ null, null ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } } ], \"description\" : \"description\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" }, \"name\" : \"name\", \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\", \"option\" : { \"blank\" : 60, \"unique\" : false, \"id\" : \"046b6c7f-0b8a-43b9-b35d-6489e6daee91\" } } ] }";
                    ApiUtil.setExampleResponse(request, "application/json", exampleString);
                    break;
                }
            }
        });
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);

    }

}
