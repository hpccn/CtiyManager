/**
 * 
 */
package cn.city.manager.model;

import org.json.JSONObject;

/**
 * @author hpc
 *
 */
public interface BaseContentDecoder {
	public BaseContent decode(JSONObject json);
}
